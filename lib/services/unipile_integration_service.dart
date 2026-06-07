import 'dart:convert';
import 'package:http/http.dart' as http;
import '../models.dart';

class UnipileIntegrationService {
  // Unipile credentials from environment variables (passed via --dart-define)
  // Never commit these to Git!
  static const String baseUrl = String.fromEnvironment(
    'UNIPILE_API_URL',
    defaultValue: '',
  );

  static const String _apiKey = String.fromEnvironment(
    'UNIPILE_API_KEY',
    defaultValue: '',
  );

  // Demo mode - automatically enabled if credentials not provided
  static bool get _demoMode => baseUrl.isEmpty || _apiKey.isEmpty;

  /// Generates a hosted auth link for user to connect their messaging accounts
  ///
  /// Returns the URL to redirect user to for authentication
  /// In demo mode, returns null to indicate credentials not configured
  Future<String?> generateHostedAuthLink({
    required String userId,
    String? successRedirectUrl,
    String? failureRedirectUrl,
  }) async {
    if (_demoMode) {
      // Demo mode - credentials not configured yet
      return null;
    }

    try {
      final uri = Uri.parse('$baseUrl/hosted/accounts/link');

      final body = {
        'type': 'create',
        'api_url': baseUrl.replaceAll('/api/v1', ''),
        'expiresOn':
            DateTime.now().add(const Duration(hours: 1)).toIso8601String(),
        'providers': '*', // All providers
        'name': userId, // Your internal user ID for matching
        if (successRedirectUrl != null)
          'success_redirect_url': successRedirectUrl,
        if (failureRedirectUrl != null)
          'failure_redirect_url': failureRedirectUrl,
      };

      final response = await http.post(
        uri,
        headers: {
          'X-API-KEY': _apiKey,
          'Accept': 'application/json',
          'Content-Type': 'application/json',
        },
        body: json.encode(body),
      );

      if (response.statusCode != 200) {
        throw _createApiException(response.statusCode, response.body);
      }

      final jsonData = json.decode(response.body) as Map<String, dynamic>;
      return jsonData['url'] as String?;
    } catch (e) {
      if (e is UnipileApiException) {
        rethrow;
      }
      throw UnipileApiException(
        'Failed to generate hosted auth link: ${e.toString()}',
      );
    }
  }

  /// Fetches premium chat threads for a given account ID from Unipile API
  ///
  /// Executes a GET request to /chats?account_id=$accountId
  /// Returns a list of ConversationThread objects mapped from Unipile chat data
  /// Throws [UnipileApiException] for non-200 status codes
  Future<List<ConversationThread>> fetchPremiumThreads(String accountId) async {
    try {
      final uri = Uri.parse(
        '$baseUrl/chats',
      ).replace(queryParameters: {'account_id': accountId});

      final response = await http.get(
        uri,
        headers: {
          'Authorization': 'Bearer $_apiKey',
          'Accept': 'application/json',
        },
      );

      if (response.statusCode != 200) {
        throw _createApiException(response.statusCode, response.body);
      }

      final jsonData = json.decode(response.body) as Map<String, dynamic>;
      final chatsData = jsonData['chats'] as List<dynamic>? ?? [];

      return chatsData.map((chatData) {
        final chat = chatData as Map<String, dynamic>;
        return _mapUnipileChatToConversationThread(chat);
      }).toList();
    } catch (e) {
      if (e is UnipileApiException) {
        rethrow;
      }
      throw UnipileApiException(
        'Failed to fetch premium threads: ${e.toString()}',
      );
    }
  }

  /// Fetches messages for a specific chat thread from Unipile API
  ///
  /// Executes a GET request to /chats/$chatId/messages
  /// Returns a list of ChatMessage objects mapped from Unipile message data
  /// Throws [UnipileApiException] for non-200 status codes
  Future<List<ChatMessage>> fetchMessagesForThread(String chatId) async {
    try {
      final uri = Uri.parse('$baseUrl/chats/$chatId/messages');

      final response = await http.get(
        uri,
        headers: {
          'Authorization': 'Bearer $_apiKey',
          'Accept': 'application/json',
        },
      );

      if (response.statusCode != 200) {
        throw _createApiException(response.statusCode, response.body);
      }

      final jsonData = json.decode(response.body) as Map<String, dynamic>;
      final messagesData = jsonData['messages'] as List<dynamic>? ?? [];

      // Determine local user ID from response if available
      final localUserId = jsonData['local_user_id'] as String?;

      return messagesData.map((messageData) {
        final message = messageData as Map<String, dynamic>;
        return _mapUnipileMessageToChatMessage(message, localUserId);
      }).toList();
    } catch (e) {
      if (e is UnipileApiException) {
        rethrow;
      }
      throw UnipileApiException(
        'Failed to fetch messages for thread: ${e.toString()}',
      );
    }
  }

  /// Maps a Unipile chat object to the application's ConversationThread model
  ConversationThread _mapUnipileChatToConversationThread(
    Map<String, dynamic> unipileChat,
  ) {
    final chatId =
        unipileChat['chat_id'] as String? ?? unipileChat['id'] as String? ?? '';

    final platform = unipileChat['platform'] as String? ??
        unipileChat['provider'] as String? ??
        'Unknown';

    return ConversationThread(
      threadId: chatId,
      platformSource: platform,
      fileSource:
          platform, // Using platform as file source for API-fetched threads
      messages: [], // Messages will be loaded separately via fetchMessagesForThread
    );
  }

  /// Maps a Unipile message object to the application's ChatMessage model
  ChatMessage _mapUnipileMessageToChatMessage(
    Map<String, dynamic> unipileMessage,
    String? localUserId,
  ) {
    final messageId = unipileMessage['message_id'] as String? ??
        unipileMessage['id'] as String? ??
        '';

    final senderId = unipileMessage['sender_id'] as String? ??
        unipileMessage['from'] as String? ??
        'unknown';

    final textBody = unipileMessage['text'] as String? ??
        unipileMessage['content'] as String? ??
        unipileMessage['body'] as String? ??
        '';

    final senderName = unipileMessage['sender_name'] as String? ??
        unipileMessage['from_name'] as String? ??
        senderId;

    // Parse timestamp - handle multiple possible timestamp formats
    DateTime timestamp;
    final timestampValue = unipileMessage['timestamp'] ??
        unipileMessage['created_at'] ??
        unipileMessage['date'];

    if (timestampValue is int) {
      timestamp = DateTime.fromMillisecondsSinceEpoch(timestampValue * 1000);
    } else if (timestampValue is String) {
      timestamp = DateTime.parse(timestampValue);
    } else {
      timestamp = DateTime.now();
    }

    // Determine if the message is from the local user (initiator)
    final isInitiator = localUserId != null && senderId == localUserId;

    return ChatMessage(
      messageId: messageId,
      senderIdentifier: senderId,
      textBody: textBody,
      senderName: senderName,
      timestamp: timestamp,
      isInitiator: isInitiator,
      isAttachment: unipileMessage['is_attachment'] as bool? ?? false,
    );
  }

  /// Creates a descriptive exception based on HTTP status code
  UnipileApiException _createApiException(int statusCode, String responseBody) {
    String message;

    switch (statusCode) {
      case 400:
        message = 'Bad Request: Invalid parameters provided to Unipile API';
        break;
      case 401:
        message = 'Unauthorized: Invalid or expired API key';
        break;
      case 403:
        message = 'Forbidden: Insufficient permissions to access this resource';
        break;
      case 404:
        message = 'Not Found: The requested resource does not exist';
        break;
      case 429:
        message = 'Rate Limit Exceeded: Too many requests to Unipile API';
        break;
      case 500:
        message = 'Internal Server Error: Unipile API encountered an error';
        break;
      case 502:
        message = 'Bad Gateway: Unipile API is temporarily unavailable';
        break;
      case 503:
        message =
            'Service Unavailable: Unipile API is currently down for maintenance';
        break;
      default:
        message =
            'Unipile API returned error status $statusCode: $responseBody';
    }

    return UnipileApiException(message, statusCode: statusCode);
  }
}

/// Custom exception for Unipile API errors
class UnipileApiException implements Exception {
  final String message;
  final int? statusCode;

  UnipileApiException(this.message, {this.statusCode});

  @override
  String toString() => 'UnipileApiException: $message';
}
