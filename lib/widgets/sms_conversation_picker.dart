import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:which_partner_is_toxic/controllers/toxicity_analyzer_controller.dart';
import 'package:which_partner_is_toxic/services/android_sms_service.dart';

class SmsConversationPicker extends StatefulWidget {
  final ToxicityAnalyzerController controller;

  const SmsConversationPicker({super.key, required this.controller});

  @override
  State<SmsConversationPicker> createState() => _SmsConversationPickerState();
}

class _SmsConversationPickerState extends State<SmsConversationPicker> {
  final AndroidSmsService _smsService = AndroidSmsService();
  List<ConversationPartner>? _conversations;
  bool _isLoading = false;
  bool _hasPermission = false;
  String? _errorMessage;
  String _searchQuery = '';

  @override
  void initState() {
    super.initState();
    print('DEBUG: SmsConversationPicker initState called');
    try {
      _checkPermissionAndLoad();
    } catch (e, stackTrace) {
      print('ERROR: Exception in initState: $e');
      print('ERROR: Stack trace: $stackTrace');
      setState(() {
        _errorMessage = 'Failed to initialize: $e';
      });
    }
  }

  Future<void> _checkPermissionAndLoad() async {
    print('DEBUG: _checkPermissionAndLoad started');
    setState(() {
      _isLoading = true;
      _errorMessage = null;
    });

    try {
      print('DEBUG: Checking SMS permission...');
      final hasPermission = await _smsService.hasSmsPermission();
      print('DEBUG: SMS permission: $hasPermission');
      setState(() => _hasPermission = hasPermission);

      if (hasPermission) {
        print('DEBUG: Permission granted, loading conversations...');
        await _loadConversations();
      } else {
        print('DEBUG: Permission not granted');
      }
    } catch (e, stackTrace) {
      print('ERROR: Exception in _checkPermissionAndLoad: $e');
      print('ERROR: Stack trace: $stackTrace');
      setState(() {
        _errorMessage = 'Error checking permissions: $e\n\nStack: $stackTrace';
      });
    } finally {
      setState(() => _isLoading = false);
    }
  }

  Future<void> _requestPermission() async {
    setState(() {
      _isLoading = true;
      _errorMessage = null;
    });

    try {
      final granted = await _smsService.requestSmsPermission();
      setState(() => _hasPermission = granted);

      if (granted) {
        await _loadConversations();
      } else {
        setState(() {
          _errorMessage = 'SMS permission is required to read conversations';
        });
      }
    } catch (e) {
      setState(() {
        _errorMessage = 'Error requesting permission: $e';
      });
    } finally {
      setState(() => _isLoading = false);
    }
  }

  Future<void> _loadConversations() async {
    setState(() {
      _isLoading = true;
      _errorMessage = null;
    });

    try {
      print('DEBUG: _loadConversations called');
      final conversations = _searchQuery.isEmpty
          ? await _smsService.fetchAllConversations()
          : await _smsService.searchConversations(_searchQuery);

      print('DEBUG: Got ${conversations.length} conversations');
      setState(() {
        _conversations = conversations;
      });
    } catch (e, stackTrace) {
      print('ERROR: Exception in _loadConversations: $e');
      print('ERROR: Stack trace: $stackTrace');

      // Show error dialog
      if (mounted) {
        showDialog(
          context: context,
          builder: (context) => AlertDialog(
            title: const Text('Error Loading Conversations'),
            content: SingleChildScrollView(
              child: SelectableText('Error: $e\n\nStack trace:\n$stackTrace'),
            ),
            actions: [
              TextButton(
                onPressed: () => Navigator.pop(context),
                child: const Text('OK'),
              ),
            ],
          ),
        );
      }
      setState(() {
        _errorMessage = 'Error loading conversations: $e';
      });
    } finally {
      setState(() => _isLoading = false);
    }
  }

  Future<void> _selectConversation(ConversationPartner partner) async {
    try {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text('ENTERED _selectConversation'),
          duration: Duration(seconds: 2),
          backgroundColor: Colors.blue,
        ),
      );

      print('DEBUG: _selectConversation called for ${partner.displayName}');
      final controller = widget.controller;

      setState(() {
        _isLoading = true;
        _errorMessage = null;
      });

      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text('setState done'),
          duration: Duration(seconds: 1),
        ),
      );
      if (mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(
            content: Text('Step 1: Fetching thread...'),
            duration: Duration(seconds: 1),
          ),
        );
      }

      print('DEBUG: Fetching conversation thread for ${partner.id}');
      // Fetch the full conversation thread
      final thread = await _smsService.fetchConversationThread(partner.id);
      print('DEBUG: Fetched ${thread.messages.length} messages');

      if (mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text('Step 2: Got ${thread.messages.length} messages'),
            duration: const Duration(seconds: 1),
          ),
        );
      }

      // Load it into the controller using the proper method
      print('DEBUG: Loading thread into controller');
      controller.loadSmsThread(thread);

      if (mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(
            content: Text('Step 3: Loaded into controller'),
            duration: Duration(seconds: 1),
          ),
        );
      }

      if (mounted) {
        print('DEBUG: Showing success message and closing picker');
        // Show success message
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text(
              'Loaded ${thread.messages.length} messages from ${partner.displayName}',
            ),
            backgroundColor: Colors.green,
          ),
        );

        // Go back to the dashboard
        Navigator.of(context).pop();
      }
    } catch (e, stackTrace) {
      print('ERROR: Exception in _selectConversation: $e');
      print('ERROR: Stack trace: $stackTrace');

      if (mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text('ERROR: $e'),
            backgroundColor: Colors.red,
            duration: const Duration(seconds: 5),
          ),
        );
      }

      setState(() {
        _errorMessage = 'Error loading conversation: $e';
      });
    } finally {
      setState(() => _isLoading = false);
    }
  }

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Select SMS Conversation'),
        backgroundColor: colorScheme.inversePrimary,
      ),
      body: Column(
        children: [
          // Search bar
          if (_hasPermission && _conversations != null)
            Padding(
              padding: const EdgeInsets.all(16),
              child: TextField(
                decoration: InputDecoration(
                  hintText: 'Search conversations...',
                  prefixIcon: const Icon(Icons.search),
                  suffixIcon: _searchQuery.isNotEmpty
                      ? IconButton(
                          icon: const Icon(Icons.clear),
                          onPressed: () {
                            setState(() => _searchQuery = '');
                            _loadConversations();
                          },
                        )
                      : null,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
                onChanged: (value) {
                  setState(() => _searchQuery = value);
                },
                onSubmitted: (_) => _loadConversations(),
              ),
            ),

          // Error message
          if (_errorMessage != null)
            Padding(
              padding: const EdgeInsets.all(16),
              child: Card(
                color: colorScheme.errorContainer,
                child: Padding(
                  padding: const EdgeInsets.all(16),
                  child: Row(
                    children: [
                      Icon(Icons.error, color: colorScheme.error),
                      const SizedBox(width: 12),
                      Expanded(
                        child: Text(
                          _errorMessage!,
                          style: TextStyle(color: colorScheme.onErrorContainer),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),

          // Main content
          Expanded(child: _buildContent(colorScheme)),
        ],
      ),
    );
  }

  Widget _buildContent(ColorScheme colorScheme) {
    if (_isLoading) {
      return const Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircularProgressIndicator(),
            SizedBox(height: 16),
            Text('Loading conversations...'),
          ],
        ),
      );
    }

    if (!_hasPermission) {
      return Center(
        child: Padding(
          padding: const EdgeInsets.all(24),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.sms_outlined, size: 80, color: colorScheme.primary),
              const SizedBox(height: 24),
              Text(
                'SMS Permission Required',
                style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                      fontWeight: FontWeight.bold,
                    ),
              ),
              const SizedBox(height: 12),
              Text(
                'To analyze SMS conversations, we need permission to read your messages. Your privacy is important - messages are only analyzed locally and never stored on our servers.',
                textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.bodyLarge,
              ),
              const SizedBox(height: 24),
              FilledButton.icon(
                onPressed: _requestPermission,
                icon: const Icon(Icons.security),
                label: const Text('Grant SMS Permission'),
                style: FilledButton.styleFrom(minimumSize: const Size(200, 48)),
              ),
            ],
          ),
        ),
      );
    }

    if (_conversations == null || _conversations!.isEmpty) {
      return Center(
        child: Padding(
          padding: const EdgeInsets.all(24),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                Icons.chat_bubble_outline,
                size: 80,
                color: colorScheme.primary.withOpacity(0.5),
              ),
              const SizedBox(height: 24),
              Text(
                _searchQuery.isEmpty
                    ? 'No SMS conversations found'
                    : 'No conversations match your search',
                style: Theme.of(context).textTheme.titleLarge,
              ),
              const SizedBox(height: 12),
              Text(
                _searchQuery.isEmpty
                    ? 'You don\'t have any SMS messages on this device'
                    : 'Try a different search term',
                textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.bodyLarge,
              ),
              if (_searchQuery.isNotEmpty) ...[
                const SizedBox(height: 24),
                OutlinedButton(
                  onPressed: () {
                    setState(() => _searchQuery = '');
                    _loadConversations();
                  },
                  child: const Text('Clear Search'),
                ),
              ],
            ],
          ),
        ),
      );
    }

    return ListView.builder(
      padding: const EdgeInsets.all(16),
      itemCount: _conversations!.length,
      itemBuilder: (context, index) {
        final conversation = _conversations![index];
        return Card(
          margin: const EdgeInsets.only(bottom: 12),
          child: ListTile(
            leading: CircleAvatar(
              backgroundColor: colorScheme.primaryContainer,
              child: Icon(Icons.person, color: colorScheme.onPrimaryContainer),
            ),
            title: Text(
              conversation.displayName,
              style: const TextStyle(fontWeight: FontWeight.bold),
            ),
            subtitle: Text(
              '${conversation.messageCount} messages',
              style: TextStyle(
                color: colorScheme.onSurface.withOpacity(0.7),
              ),
            ),
            trailing: const Icon(Icons.arrow_forward_ios, size: 16),
            onTap: () {
              print(
                'DEBUG: ListTile onTap triggered for ${conversation.displayName}',
              );
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  content: Text('Loading: ${conversation.displayName}'),
                  duration: const Duration(seconds: 1),
                ),
              );
              _selectConversation(conversation);
            },
          ),
        );
      },
    );
  }
}
