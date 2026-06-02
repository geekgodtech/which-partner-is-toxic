import 'dart:io';
import 'package:flutter/services.dart';
import 'package:telephony/telephony.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:which_partner_is_toxic/models.dart';

class AndroidSmsService {
  final Telephony _telephony = Telephony.instance;
  static const platform = MethodChannel('com.toxicity_analyzer/contacts');

  /// Request SMS read permission from the user
  Future<bool> requestSmsPermission() async {
    if (!Platform.isAndroid) {
      return false;
    }

    final status = await Permission.sms.request();
    return status.isGranted;
  }

  /// Check if SMS permission is already granted
  Future<bool> hasSmsPermission() async {
    if (!Platform.isAndroid) {
      return false;
    }

    return await Permission.sms.isGranted;
  }

  /// Get contact name from phone number using platform channel
  Future<String> _getContactName(String phoneNumber) async {
    print('DEBUG: _getContactName called for: $phoneNumber');

    try {
      print('DEBUG: Calling platform channel to get contact name...');
      final String? contactName = await platform.invokeMethod(
        'getContactName',
        {'phoneNumber': phoneNumber},
      );

      if (contactName != null && contactName.isNotEmpty) {
        print('DEBUG: Found contact name: $contactName');
        return contactName;
      }

      print('DEBUG: No contact found, returning phone number');
      return phoneNumber;
    } catch (e, stackTrace) {
      print('ERROR: Exception in _getContactName: $e');
      print('ERROR: Stack trace: $stackTrace');
      return phoneNumber;
    }
  }

  /// Fetch all SMS messages and group them by conversation partner
  Future<List<ConversationPartner>> fetchAllConversations() async {
    print('DEBUG: fetchAllConversations started');

    if (!Platform.isAndroid) {
      throw UnsupportedError('SMS reading is only supported on Android');
    }

    final hasPermission = await hasSmsPermission();
    if (!hasPermission) {
      throw Exception('SMS permission not granted');
    }

    print('DEBUG: Fetching inbox messages...');
    // Fetch all SMS messages (inbox and sent)
    final messages = await _telephony.getInboxSms(
      columns: [SmsColumn.ADDRESS, SmsColumn.BODY, SmsColumn.DATE],
    );
    print('DEBUG: Fetched ${messages.length} inbox messages');

    print('DEBUG: Fetching sent messages...');
    final sentMessages = await _telephony.getSentSms(
      columns: [SmsColumn.ADDRESS, SmsColumn.BODY, SmsColumn.DATE],
    );
    print('DEBUG: Fetched ${sentMessages.length} sent messages');

    // Combine all messages
    final allMessages = [...messages, ...sentMessages];
    print('DEBUG: Total messages: ${allMessages.length}');

    // Group messages by phone number/address
    final Map<String, List<SmsMessage>> conversationMap = {};

    for (final msg in allMessages) {
      final address = msg.address ?? 'Unknown';
      if (!conversationMap.containsKey(address)) {
        conversationMap[address] = [];
      }
      conversationMap[address]!.add(msg);
    }
    print('DEBUG: Grouped into ${conversationMap.length} conversations');

    // Convert to ConversationPartner list
    final conversations = <ConversationPartner>[];

    int processedCount = 0;
    for (final entry in conversationMap.entries) {
      final address = entry.key;
      final messages = entry.value;

      // Sort messages by date (date is int milliseconds)
      messages.sort((a, b) {
        final dateA = a.date ?? 0;
        final dateB = b.date ?? 0;
        return dateA.compareTo(dateB);
      });

      // Count messages and get last message date
      final messageCount = messages.length;
      final lastMessageDate = messages.isNotEmpty
          ? (messages.last.date ?? 0)
          : 0;

      print(
        'DEBUG: Processing conversation $processedCount/${conversationMap.length} for $address',
      );
      // Get contact name for this phone number
      final displayName = await _getContactName(address);

      conversations.add(
        ConversationPartner(
          id: address,
          displayName: displayName,
          messageCount: messageCount,
          lastMessageDate: lastMessageDate,
        ),
      );

      processedCount++;
    }

    print(
      'DEBUG: Sorting conversations by contact name first, then most recent...',
    );
    // Sort by: 1) Has contact name (not just phone number), 2) Most recent
    conversations.sort((a, b) {
      // Check if displayName is a phone number (contains only digits, spaces, dashes, etc.)
      final aIsPhoneNumber = RegExp(
        r'^[\d\s\-\(\)\+]+$',
      ).hasMatch(a.displayName);
      final bIsPhoneNumber = RegExp(
        r'^[\d\s\-\(\)\+]+$',
      ).hasMatch(b.displayName);

      // Contacts with names come first
      if (!aIsPhoneNumber && bIsPhoneNumber) return -1;
      if (aIsPhoneNumber && !bIsPhoneNumber) return 1;

      // Within same category, sort by most recent
      return b.lastMessageDate.compareTo(a.lastMessageDate);
    });

    print(
      'DEBUG: fetchAllConversations completed, returning ${conversations.length} conversations',
    );
    return conversations;
  }

  /// Fetch a specific conversation thread by phone number/address
  Future<ConversationThread> fetchConversationThread(String address) async {
    if (!Platform.isAndroid) {
      throw UnsupportedError('SMS reading is only supported on Android');
    }

    final hasPermission = await hasSmsPermission();
    if (!hasPermission) {
      throw Exception('SMS permission not granted');
    }

    // Fetch inbox messages from this address
    final inboxMessages = await _telephony.getInboxSms(
      columns: [SmsColumn.ADDRESS, SmsColumn.BODY, SmsColumn.DATE],
      filter: SmsFilter.where(SmsColumn.ADDRESS).equals(address),
    );

    // Fetch sent messages to this address
    final sentMessages = await _telephony.getSentSms(
      columns: [SmsColumn.ADDRESS, SmsColumn.BODY, SmsColumn.DATE],
      filter: SmsFilter.where(SmsColumn.ADDRESS).equals(address),
    );

    // Combine and sort all messages (date is int milliseconds)
    final allMessages = [...inboxMessages, ...sentMessages];
    allMessages.sort((a, b) {
      final dateA = a.date ?? 0;
      final dateB = b.date ?? 0;
      return dateA.compareTo(dateB);
    });

    // Convert to ChatMessage list
    final messages = allMessages.map((sms) {
      final isSent = sentMessages.contains(sms);
      final smsDate = sms.date;
      final DateTime timestamp;
      if (smsDate != null) {
        // sms.date returns milliseconds since epoch as int
        timestamp = DateTime.fromMillisecondsSinceEpoch(smsDate);
      } else {
        timestamp = DateTime.now();
      }

      return ChatMessage(
        timestamp: timestamp,
        senderName: isSent ? 'You' : address,
        textContent: sms.body ?? '',
      );
    }).toList();

    return ConversationThread(
      threadId: 'sms_$address',
      platformSource: 'SMS',
      messages: messages,
      fileSource: 'Android SMS',
    );
  }

  /// Search for conversations containing a specific keyword
  Future<List<ConversationPartner>> searchConversations(String keyword) async {
    if (!Platform.isAndroid) {
      throw UnsupportedError('SMS reading is only supported on Android');
    }

    final hasPermission = await hasSmsPermission();
    if (!hasPermission) {
      throw Exception('SMS permission not granted');
    }

    // Fetch all messages containing the keyword
    final messages = await _telephony.getInboxSms(
      columns: [SmsColumn.ADDRESS, SmsColumn.BODY, SmsColumn.DATE],
      filter: SmsFilter.where(SmsColumn.BODY).like('%$keyword%'),
    );

    final sentMessages = await _telephony.getSentSms(
      columns: [SmsColumn.ADDRESS, SmsColumn.BODY, SmsColumn.DATE],
      filter: SmsFilter.where(SmsColumn.BODY).like('%$keyword%'),
    );

    // Combine and group by address
    final allMessages = [...messages, ...sentMessages];
    final Map<String, List<SmsMessage>> addressMessages = {};

    for (final msg in allMessages) {
      final address = msg.address ?? 'Unknown';
      if (!addressMessages.containsKey(address)) {
        addressMessages[address] = [];
      }
      addressMessages[address]!.add(msg);
    }

    // Convert to ConversationPartner list
    final conversations = addressMessages.entries.map((entry) {
      final messages = entry.value;
      messages.sort((a, b) => (a.date ?? 0).compareTo(b.date ?? 0));
      final lastMessageDate = messages.isNotEmpty
          ? (messages.last.date ?? 0)
          : 0;

      return ConversationPartner(
        id: entry.key,
        displayName: entry.key,
        messageCount: messages.length,
        lastMessageDate: lastMessageDate,
      );
    }).toList();

    // Sort by: 1) Has contact name (not just phone number), 2) Most recent
    conversations.sort((a, b) {
      final aIsPhoneNumber = RegExp(
        r'^[\d\s\-\(\)\+]+$',
      ).hasMatch(a.displayName);
      final bIsPhoneNumber = RegExp(
        r'^[\d\s\-\(\)\+]+$',
      ).hasMatch(b.displayName);

      if (!aIsPhoneNumber && bIsPhoneNumber) return -1;
      if (aIsPhoneNumber && !bIsPhoneNumber) return 1;

      return b.lastMessageDate.compareTo(a.lastMessageDate);
    });

    return conversations;
  }
}

/// Model for conversation partner in the list
class ConversationPartner {
  final String id;
  final String displayName;
  final int messageCount;
  final int lastMessageDate; // milliseconds since epoch

  ConversationPartner({
    required this.id,
    required this.displayName,
    required this.messageCount,
    required this.lastMessageDate,
  });
}
