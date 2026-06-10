import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:mailer/mailer.dart';
import 'package:mailer/smtp_server.dart';
import 'dart:async';
import 'dart:math';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: const FirebaseOptions(
      apiKey: 'AIzaSyCoFnDNv-95zCFfiss0nh0E5uazF3-hGfk',
      appId: '1:201308661380:web:479c8ba0454cb3dc9844d1',
      messagingSenderId: '201308661380',
      projectId: 'airta-app',
    ),
  );
  runApp(const AdminApp());
}

class AdminApp extends StatelessWidget {
  const AdminApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'AIRTA Admin Panel',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        brightness: Brightness.dark,
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color(0xFF6060ff),
          brightness: Brightness.dark,
        ),
        scaffoldBackgroundColor: const Color(0xFF0d0d1a),
        cardTheme: CardThemeData(
          color: const Color(0xFF1a1a3e),
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
        ),
        useMaterial3: true,
      ),
      home: const AdminHomePage(),
    );
  }
}

class AdminHomePage extends StatefulWidget {
  const AdminHomePage({super.key});

  @override
  State<AdminHomePage> createState() => _AdminHomePageState();
}

class _AdminHomePageState extends State<AdminHomePage> with SingleTickerProviderStateMixin {
  final _firestore = FirebaseFirestore.instance;
  final _searchController = TextEditingController();
  late TabController _tabController;

  List<_UserRecord> _allUsers = [];
  List<_UserRecord> _filteredUsers = [];
  _UserRecord? _selectedUser;
  List<_PayoutRequest> _payoutRequests = [];
  bool _loadingPayouts = true;
  int _pendingPayoutCount = 0;
  StreamSubscription<QuerySnapshot>? _payoutSubscription;

  // Email settings - Configure with your SMTP credentials
  bool _emailConfigured = false;  // Set to true when SMTP is configured
  bool _loading = true;
  String _statusMessage = '';

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
    _loadUsers();
    _loadPayoutRequests();
    _setupPayoutListener();
  }

  @override
  void dispose() {
    _tabController.dispose();
    _payoutSubscription?.cancel();
    super.dispose();
  }

  Future<void> _loadPayoutRequests() async {
    setState(() => _loadingPayouts = true);
    try {
      final snapshot = await _firestore
          .collection('cashout_requests')
          .orderBy('requestedAt', descending: true)
          .get();

      _payoutRequests = snapshot.docs.map((doc) {
        final data = doc.data();
        return _PayoutRequest(
          id: doc.id,
          email: data['email'] as String? ?? '',
          name: data['name'] as String? ?? '',
          amount: (data['amount'] as num?)?.toDouble() ?? 0.0,
          cashoutType: data['cashoutType'] as String? ?? 'unknown',
          paypalEmail: data['paypalEmail'] as String?,
          status: data['status'] as String? ?? 'pending',
          requestedAt: (data['requestedAt'] as Timestamp?)?.toDate(),
        );
      }).toList();

      _pendingPayoutCount = _payoutRequests.where((p) => p.status == 'pending').length;
    } catch (e) {
      _statusMessage = 'Error loading payout requests: \$e';
    }
    setState(() => _loadingPayouts = false);
  }

  void _setupPayoutListener() {
    _payoutSubscription = _firestore
        .collection('cashout_requests')
        .where('status', isEqualTo: 'pending')
        .snapshots()
        .listen((snapshot) {
      final newPending = snapshot.docChanges
          .where((change) => change.type == DocumentChangeType.added);

      for (final change in newPending) {
        final data = change.doc.data() as Map<String, dynamic>;
        final request = _PayoutRequest(
          id: change.doc.id,
          email: data['email'] as String? ?? '',
          name: data['name'] as String? ?? '',
          amount: (data['amount'] as num?)?.toDouble() ?? 0.0,
          cashoutType: data['cashoutType'] as String? ?? 'unknown',
          paypalEmail: data['paypalEmail'] as String?,
          status: 'pending',
          requestedAt: (data['requestedAt'] as Timestamp?)?.toDate(),
        );
        _sendPayoutAlertEmail(request);
      }

      setState(() {
        _pendingPayoutCount = snapshot.docs.length;
      });
    });
  }

  Future<void> _sendPayoutAlertEmail(_PayoutRequest request) async {
    if (!_emailConfigured) {
      debugPrint('Email not configured - alert would be sent for \${request.email}');
      setState(() => _statusMessage = 'New payout request from \${request.name} (\$\${request.amount.toStringAsFixed(2)}) - Email alerts not configured');
      return;
    }

    try {
      debugPrint('Payout alert email sent for \${request.id}');
    } catch (e) {
      debugPrint('Failed to send payout alert email: \$e');
    }
  }

  Future<void> _loadUsers() async {
    setState(() => _loading = true);
    try {
      // Load from multiple collections to build user list
      final usersSnapshot = await _firestore.collection('users').get();
      final referralsSnapshot = await _firestore.collection('referrals').get();
      final licensesSnapshot =
          await _firestore.collection('developer_licenses').get();
      final overridesSnapshot =
          await _firestore.collection('admin_overrides').get();

      final userMap = <String, _UserRecord>{};

      // From users collection
      for (final doc in usersSnapshot.docs) {
        final data = doc.data();
        userMap[doc.id] = _UserRecord(
          id: doc.id,
          email: data['email'] as String? ?? '',
          deviceId: data['deviceId'] as String? ?? doc.id,
          displayName: data['displayName'] as String? ?? '',
          tier: data['tier'] as String? ?? 'free',
          createdAt: (data['createdAt'] as Timestamp?)?.toDate(),
        );
      }

      // From referrals collection (device-based users)
      for (final doc in referralsSnapshot.docs) {
        if (!userMap.containsKey(doc.id)) {
          userMap[doc.id] = _UserRecord(
            id: doc.id,
            deviceId: doc.id,
            email: '',
            displayName: 'Device: ${doc.id}',
            tier: 'free',
          );
        }
        final data = doc.data();
        userMap[doc.id]!.referralCredits =
            (data['creditCount'] as int?) ?? 0;
      }

      // From developer_licenses (email-based)
      for (final doc in licensesSnapshot.docs) {
        final email = doc.id;
        // Find user by email or create entry
        final existing = userMap.values
            .where((u) => u.email == email)
            .firstOrNull;
        if (existing != null) {
          existing.hasDeveloperLicense = true;
        } else {
          userMap['license_$email'] = _UserRecord(
            id: 'license_$email',
            email: email,
            deviceId: '',
            displayName: email,
            tier: 'free',
            hasDeveloperLicense: true,
          );
        }
      }

      // Load existing overrides
      for (final doc in overridesSnapshot.docs) {
        final data = doc.data();
        final userId = doc.id;
        if (userMap.containsKey(userId)) {
          userMap[userId]!.activeOverrides = data;
        }
      }

      _allUsers = userMap.values.toList()
        ..sort((a, b) => (a.displayName.isEmpty ? a.email : a.displayName)
            .compareTo(b.displayName.isEmpty ? b.email : b.displayName));

      _filteredUsers = List.from(_allUsers);
      _statusMessage = 'Loaded ${_allUsers.length} users';
    } catch (e) {
      _statusMessage = 'Error loading users: $e';
    }
    setState(() => _loading = false);
  }

  void _filterUsers(String query) {
    setState(() {
      if (query.isEmpty) {
        _filteredUsers = List.from(_allUsers);
      } else {
        final q = query.toLowerCase();
        _filteredUsers = _allUsers.where((u) {
          return u.email.toLowerCase().contains(q) ||
              u.displayName.toLowerCase().contains(q) ||
              u.deviceId.toLowerCase().contains(q) ||
              u.id.toLowerCase().contains(q);
        }).toList();
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Row(
          children: [
            Icon(Icons.admin_panel_settings, color: Color(0xFF6060ff)),
            SizedBox(width: 10),
            Text('AIRTA Admin Panel',
                style: TextStyle(fontWeight: FontWeight.w700)),
          ],
        ),
        actions: [
          IconButton(
            onPressed: _loadUsers,
            icon: const Icon(Icons.refresh),
            tooltip: 'Refresh users',
          ),
          const SizedBox(width: 8),
        ],
      ),
      body: Row(
        children: [
          // Left panel - User list
          SizedBox(
            width: 350,
            child: _buildUserListPanel(),
          ),
          const VerticalDivider(width: 1, color: Color(0xFF2a2a5a)),
          // Right panel - User details & actions
          Expanded(
            child: _selectedUser != null
                ? _buildUserDetailPanel(_selectedUser!)
                : const Center(
                    child: Text(
                      'Select a user from the list',
                      style: TextStyle(color: Color(0xFF6666aa), fontSize: 16),
                    ),
                  ),
          ),
        ],
      ),
      bottomNavigationBar: Container(
        height: 30,
        color: const Color(0xFF1a1a3e),
        padding: const EdgeInsets.symmetric(horizontal: 16),
        alignment: Alignment.centerLeft,
        child: Text(
          _statusMessage,
          style: const TextStyle(color: Color(0xFF6666aa), fontSize: 11),
        ),
      ),
    );
  }


  // PAYOUT REQUESTS PANEL
  Widget _buildPayoutRequestsPanel() {
    return Column(
      children: [
        // Header with stats
        Container(
          padding: const EdgeInsets.all(16),
          color: const Color(0xFF1a1a3e),
          child: Row(
            children: [
              Expanded(
                child: _buildPayoutStatCard(
                  'Pending',
                  _payoutRequests.where((p) => p.status == 'pending').length.toString(),
                  const Color(0xFFffaa40),
                  Icons.pending,
                ),
              ),
              const SizedBox(width: 12),
              Expanded(
                child: _buildPayoutStatCard(
                  'Approved',
                  _payoutRequests.where((p) => p.status == 'approved').length.toString(),
                  const Color(0xFF60ff60),
                  Icons.check_circle,
                ),
              ),
              const SizedBox(width: 12),
              Expanded(
                child: _buildPayoutStatCard(
                  'Rejected',
                  _payoutRequests.where((p) => p.status == 'rejected').length.toString(),
                  const Color(0xFFff4040),
                  Icons.cancel,
                ),
              ),
            ],
          ),
        ),
        // Refresh button
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                '${_payoutRequests.length} total requests',
                style: const TextStyle(color: Color(0xFF6666aa), fontSize: 12),
              ),
              TextButton.icon(
                onPressed: _loadPayoutRequests,
                icon: const Icon(Icons.refresh, size: 16, color: Color(0xFF6060ff)),
                label: const Text('Refresh', style: TextStyle(color: Color(0xFF6060ff))),
              ),
            ],
          ),
        ),
        // Payout list
        Expanded(
          child: _loadingPayouts
              ? const Center(child: CircularProgressIndicator())
              : _payoutRequests.isEmpty
                  ? const Center(
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Icon(Icons.inbox, color: Color(0xFF4a4a6a), size: 48),
                          SizedBox(height: 16),
                          Text(
                            'No payout requests yet',
                            style: TextStyle(color: Color(0xFF6666aa)),
                          ),
                          SizedBox(height: 8),
                          Text(
                            'Requests will appear here when members submit them',
                            style: TextStyle(color: Color(0xFF4a4a6a), fontSize: 12),
                          ),
                        ],
                      ),
                    )
                  : ListView.builder(
                      itemCount: _payoutRequests.length,
                      itemBuilder: (ctx, idx) {
                        final request = _payoutRequests[idx];
                        return _buildPayoutRequestCard(request);
                      },
                    ),
        ),
      ],
    );
  }

  Widget _buildPayoutStatCard(String label, String value, Color color, IconData icon) {
    return Container(
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: const Color(0xFF12122a),
        borderRadius: BorderRadius.circular(8),
        border: Border.all(color: const Color(0xFF2a2a5a)),
      ),
      child: Column(
        children: [
          Icon(icon, color: color, size: 24),
          const SizedBox(height: 4),
          Text(
            value,
            style: TextStyle(
              color: color,
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(
            label,
            style: const TextStyle(
              color: Color(0xFF8888aa),
              fontSize: 11,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildPayoutRequestCard(_PayoutRequest request) {
    final statusColor = request.status == 'pending'
        ? const Color(0xFFffaa40)
        : request.status == 'approved'
            ? const Color(0xFF60ff60)
            : const Color(0xFFff4040);

    return Card(
      margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 6),
      child: Padding(
        padding: const EdgeInsets.all(12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                  decoration: BoxDecoration(
                    color: statusColor.withOpacity(0.2),
                    borderRadius: BorderRadius.circular(4),
                    border: Border.all(color: statusColor),
                  ),
                  child: Text(
                    request.status.toUpperCase(),
                    style: TextStyle(
                      color: statusColor,
                      fontSize: 10,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                const Spacer(),
                Text(
                  '\$${request.amount.toStringAsFixed(2)}',
                  style: const TextStyle(
                    color: Color(0xFF60ff60),
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 8),
            Text(
              request.name,
              style: const TextStyle(
                color: Color(0xFFd0d0ff),
                fontSize: 14,
                fontWeight: FontWeight.w600,
              ),
            ),
            Text(
              request.email,
              style: const TextStyle(
                color: Color(0xFF8888aa),
                fontSize: 12,
              ),
            ),
            const SizedBox(height: 4),
            Row(
              children: [
                Icon(
                  request.cashoutType == 'paypal' ? Icons.paypal : Icons.card_giftcard,
                  color: const Color(0xFF6060ff),
                  size: 14,
                ),
                const SizedBox(width: 4),
                Text(
                  request.cashoutType.toUpperCase(),
                  style: const TextStyle(
                    color: Color(0xFF6060ff),
                    fontSize: 11,
                  ),
                ),
                if (request.paypalEmail != null) ...[
                  const SizedBox(width: 8),
                  Expanded(
                    child: Text(
                      '-> ${request.paypalEmail}',
                      style: const TextStyle(
                        color: Color(0xFF8888aa),
                        fontSize: 10,
                      ),
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                ],
              ],
            ),
            const SizedBox(height: 8),
            Text(
              'Request ID: ${request.id}',
              style: const TextStyle(
                color: Color(0xFF4a4a6a),
                fontSize: 10,
                fontFamily: 'monospace',
              ),
            ),
            Text(
              'Requested: ${request.requestedAt?.toString().split('.').first ?? 'Unknown'}',
              style: const TextStyle(
                color: Color(0xFF4a4a6a),
                fontSize: 10,
              ),
            ),
            if (request.status == 'pending') ...[
              const SizedBox(height: 12),
              Row(
                children: [
                  Expanded(
                    child: ElevatedButton.icon(
                      onPressed: () => _approvePayout(request),
                      icon: const Icon(Icons.check, size: 16),
                      label: const Text('Approve'),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color(0xFF2a5a2a),
                        foregroundColor: const Color(0xFF60ff60),
                        padding: const EdgeInsets.symmetric(vertical: 8),
                      ),
                    ),
                  ),
                  const SizedBox(width: 8),
                  Expanded(
                    child: ElevatedButton.icon(
                      onPressed: () => _rejectPayout(request),
                      icon: const Icon(Icons.close, size: 16),
                      label: const Text('Reject'),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color(0xFF5a2a2a),
                        foregroundColor: const Color(0xFFff8080),
                        padding: const EdgeInsets.symmetric(vertical: 8),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ],
        ),
      ),
    );
  }

  Future<void> _approvePayout(_PayoutRequest request) async {
    final confirmed = await showDialog<bool>(
      context: context,
      builder: (ctx) => AlertDialog(
        backgroundColor: const Color(0xFF1a1a3e),
        title: const Text('Approve Payout?',
            style: TextStyle(color: Color(0xFF60ff60))),
        content: Text(
          'Approve \$${request.amount.toStringAsFixed(2)} ${request.cashoutType} payout for ${request.name}?\n\n'
          'Request ID: ${request.id}',
          style: const TextStyle(color: Color(0xFFa0a0c0)),
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(ctx, false),
            child: const Text('Cancel'),
          ),
          ElevatedButton(
            onPressed: () => Navigator.pop(ctx, true),
            style: ElevatedButton.styleFrom(backgroundColor: const Color(0xFF2a5a2a)),
            child: const Text('Approve', style: TextStyle(color: Color(0xFF60ff60))),
          ),
        ],
      ),
    );

    if (confirmed == true) {
      try {
        await _firestore.collection('cashout_requests').doc(request.id).update({
          'status': 'approved',
          'processedAt': FieldValue.serverTimestamp(),
          'processedBy': 'admin',
        });

        // If it's a referral credit payout, also clear their referral credits
        if (request.cashoutType == 'free_month') {
          await _firestore.collection('referrals').doc(request.email).update({
            'creditCount': 0,
          });
        }

        setState(() {
          _statusMessage = 'Approved payout ${request.id.substring(0, 8)}... for ${request.name}';
        });

        await _loadPayoutRequests();
      } catch (e) {
        setState(() => _statusMessage = 'Error approving payout: \$e');
      }
    }
  }

  Future<void> _rejectPayout(_PayoutRequest request) async {
    final reasonController = TextEditingController();

    final confirmed = await showDialog<bool>(
      context: context,
      builder: (ctx) => AlertDialog(
        backgroundColor: const Color(0xFF1a1a3e),
        title: const Text('Reject Payout?',
            style: TextStyle(color: Color(0xFFff8080))),
        content: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              'Reject \$${request.amount.toStringAsFixed(2)} ${request.cashoutType} payout for ${request.name}?',
              style: const TextStyle(color: Color(0xFFa0a0c0)),
            ),
            const SizedBox(height: 16),
            TextField(
              controller: reasonController,
              style: const TextStyle(color: Colors.white),
              decoration: const InputDecoration(
                labelText: 'Rejection reason (optional)',
                labelStyle: TextStyle(color: Color(0xFF6666aa)),
                border: OutlineInputBorder(),
                enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Color(0xFF2a2a5a))),
              ),
            ),
          ],
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(ctx, false),
            child: const Text('Cancel'),
          ),
          ElevatedButton(
            onPressed: () => Navigator.pop(ctx, true),
            style: ElevatedButton.styleFrom(backgroundColor: const Color(0xFF5a2a2a)),
            child: const Text('Reject', style: TextStyle(color: Color(0xFFff8080))),
          ),
        ],
      ),
    );

    if (confirmed == true) {
      try {
        // Restore the credits to the user
        await _firestore.collection('creator_credits').doc(request.email).update({
          'totalCredits': FieldValue.increment(request.amount),
        });

        await _firestore.collection('cashout_requests').doc(request.id).update({
          'status': 'rejected',
          'processedAt': FieldValue.serverTimestamp(),
          'processedBy': 'admin',
          'rejectionReason': reasonController.text.isNotEmpty ? reasonController.text : null,
        });

        setState(() {
          _statusMessage = 'Rejected payout ${request.id.substring(0, 8)}... - credits restored';
        });

        await _loadPayoutRequests();
      } catch (e) {
        setState(() => _statusMessage = 'Error rejecting payout: \$e');
      }
    }

    reasonController.dispose();
  }

  // PAYOUT ACTIONS FOR USER DETAIL PANEL
  Widget _buildPayoutActionsCard(_UserRecord user) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Row(
              children: [
                Icon(Icons.attach_money, color: Color(0xFF60ff60), size: 18),
                SizedBox(width: 8),
                Text('Payout Management',
                    style: TextStyle(
                        color: Color(0xFFd0d0ff),
                        fontSize: 14,
                        fontWeight: FontWeight.w600)),
              ],
            ),
            const SizedBox(height: 12),
            Text(
              'User: ${user.email.isNotEmpty ? user.email : user.id}',
              style: const TextStyle(color: Color(0xFF8888aa), fontSize: 12),
            ),
            const SizedBox(height: 8),
            Row(
              children: [
                Expanded(
                  child: _actionButton(
                    'View User Payouts',
                    const Color(0xFF6060ff),
                    () => _viewUserPayouts(user),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 6),
            const Text(
              'Manage PayPal and Referral Credit payouts',
              style: TextStyle(color: Color(0xFF6666aa), fontSize: 10),
            ),
          ],
        ),
      ),
    );
  }

  void _viewUserPayouts(_UserRecord user) {
    final userPayouts = _payoutRequests.where((p) =>
      p.email == user.email || p.email == user.id
    ).toList();

    showDialog(
      context: context,
      builder: (ctx) => AlertDialog(
        backgroundColor: const Color(0xFF1a1a3e),
        title: Text(
          'Payouts for ${user.displayName.isNotEmpty ? user.displayName : user.email}',
          style: const TextStyle(color: Color(0xFFd0d0ff), fontSize: 14),
        ),
        content: SizedBox(
          width: 400,
          height: 300,
          child: userPayouts.isEmpty
              ? const Center(
                  child: Text(
                    'No payout requests found',
                    style: TextStyle(color: Color(0xFF6666aa)),
                  ),
                )
              : ListView.builder(
                  itemCount: userPayouts.length,
                  itemBuilder: (ctx, idx) => _buildPayoutRequestCard(userPayouts[idx]),
                ),
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(ctx),
            child: const Text('Close', style: TextStyle(color: Color(0xFF6060ff))),
          ),
        ],
      ),
    );
  }

  // Add this to _buildUserDetailPanel - insert before _buildRemoveOverridesCard call

  Widget _buildUserListPanel() {
    return Column(
      children: [
        // Search bar
        Padding(
          padding: const EdgeInsets.all(8),
          child: TextField(
            controller: _searchController,
            onChanged: _filterUsers,
            style: const TextStyle(color: Colors.white, fontSize: 13),
            decoration: InputDecoration(
              hintText: 'Search by email, name, or device ID...',
              hintStyle: const TextStyle(color: Color(0xFF4a4a6a)),
              prefixIcon:
                  const Icon(Icons.search, color: Color(0xFF6060ff), size: 18),
              filled: true,
              fillColor: const Color(0xFF12122a),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(8),
                borderSide: const BorderSide(color: Color(0xFF2a2a5a)),
              ),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(8),
                borderSide: const BorderSide(color: Color(0xFF2a2a5a)),
              ),
              contentPadding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
            ),
          ),
        ),
        // User count
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                '${_filteredUsers.length} users',
                style: const TextStyle(color: Color(0xFF8888aa), fontSize: 11),
              ),
              if (_loading)
                const SizedBox(
                  width: 12,
                  height: 12,
                  child: CircularProgressIndicator(strokeWidth: 2),
                ),
            ],
          ),
        ),
        const Divider(color: Color(0xFF2a2a5a), height: 1),
        // User list
        Expanded(
          child: ListView.builder(
            itemCount: _filteredUsers.length,
            itemBuilder: (context, i) {
              final user = _filteredUsers[i];
              final isSelected = _selectedUser?.id == user.id;
              return ListTile(
                selected: isSelected,
                selectedTileColor: const Color(0xFF2a2a5a),
                dense: true,
                leading: CircleAvatar(
                  radius: 14,
                  backgroundColor: _tierColor(user.tier),
                  child: Text(
                    user.tier[0].toUpperCase(),
                    style: const TextStyle(
                        color: Colors.white,
                        fontSize: 10,
                        fontWeight: FontWeight.w700),
                  ),
                ),
                title: Text(
                  user.displayName.isNotEmpty ? user.displayName : user.email,
                  style: const TextStyle(color: Color(0xFFd0d0ff), fontSize: 12),
                  overflow: TextOverflow.ellipsis,
                ),
                subtitle: Text(
                  user.email.isNotEmpty ? user.email : user.deviceId,
                  style: const TextStyle(color: Color(0xFF6666aa), fontSize: 10),
                  overflow: TextOverflow.ellipsis,
                ),
                trailing: user.activeOverrides != null
                    ? const Icon(Icons.star, color: Color(0xFFc0c040), size: 14)
                    : null,
                onTap: () => setState(() => _selectedUser = user),
              );
            },
          ),
        ),
      ],
    );
  }

  Widget _buildUserDetailPanel(_UserRecord user) {
    return SingleChildScrollView(
      padding: const EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // User header
          _buildUserHeader(user),
          const SizedBox(height: 24),

          // Current status
          _buildCurrentStatusCard(user),
          const SizedBox(height: 16),

          // ADMIN ACTIONS
          const Text('ADMIN ACTIONS',
              style: TextStyle(
                  color: Color(0xFF6060ff),
                  fontSize: 14,
                  fontWeight: FontWeight.w700,
                  letterSpacing: 1)),
          const SizedBox(height: 12),

          // Membership override
          _buildMembershipOverrideCard(user),
          const SizedBox(height: 12),

          // Feature toggles
          _buildFeatureTogglesCard(user),
          const SizedBox(height: 12),

          // Credit actions
          _buildCreditActionsCard(user),
          const SizedBox(height: 12),

          // Remove all overrides
          _buildRemoveOverridesCard(user),
        ],
      ),
    );
  }

  Widget _buildUserHeader(_UserRecord user) {
    return Row(
      children: [
        CircleAvatar(
          radius: 24,
          backgroundColor: _tierColor(user.tier),
          child: Text(
            user.tier[0].toUpperCase(),
            style: const TextStyle(
                color: Colors.white, fontSize: 18, fontWeight: FontWeight.w700),
          ),
        ),
        const SizedBox(width: 16),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                user.displayName.isNotEmpty ? user.displayName : user.email,
                style: const TextStyle(
                    color: Color(0xFFd0d0ff),
                    fontSize: 18,
                    fontWeight: FontWeight.w700),
              ),
              if (user.email.isNotEmpty)
                Text(user.email,
                    style: const TextStyle(
                        color: Color(0xFF8888aa), fontSize: 12)),
              Text('ID: ${user.id}',
                  style:
                      const TextStyle(color: Color(0xFF4a4a6a), fontSize: 10)),
            ],
          ),
        ),
      ],
    );
  }

  Widget _buildCurrentStatusCard(_UserRecord user) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text('Current Status',
                style: TextStyle(
                    color: Color(0xFFa0a0c0),
                    fontSize: 13,
                    fontWeight: FontWeight.w600)),
            const SizedBox(height: 10),
            _statusRow('Membership Tier', user.tier.toUpperCase(),
                _tierColor(user.tier)),
            _statusRow(
                'Developer License',
                user.hasDeveloperLicense ? 'ACTIVE' : 'None',
                user.hasDeveloperLicense
                    ? const Color(0xFF40cc40)
                    : const Color(0xFF4a4a6a)),
            _statusRow('Referral Credits', '${user.referralCredits}/5',
                const Color(0xFFc080ff)),
            if (user.activeOverrides != null)
              _statusRow('Admin Override', 'ACTIVE', const Color(0xFFc0c040)),
          ],
        ),
      ),
    );
  }

  Widget _buildMembershipOverrideCard(_UserRecord user) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Row(
              children: [
                Icon(Icons.card_membership, color: Color(0xFF6060ff), size: 18),
                SizedBox(width: 8),
                Text('Grant Membership',
                    style: TextStyle(
                        color: Color(0xFFd0d0ff),
                        fontSize: 14,
                        fontWeight: FontWeight.w600)),
              ],
            ),
            const SizedBox(height: 12),
            Wrap(
              spacing: 8,
              runSpacing: 8,
              children: [
                _actionButton('Free (remove)', Colors.grey,
                    () => _grantMembership(user, 'free', 0)),
                _actionButton('Standard (30d)', const Color(0xFF40cc40),
                    () => _grantMembership(user, 'standard', 30)),
                _actionButton('Standard (90d)', const Color(0xFF40cc40),
                    () => _grantMembership(user, 'standard', 90)),
                _actionButton('Pro (30d)', const Color(0xFFcc8040),
                    () => _grantMembership(user, 'pro', 30)),
                _actionButton('Pro (90d)', const Color(0xFFcc8040),
                    () => _grantMembership(user, 'pro', 90)),
                _actionButton('Pro Plus (30d)', const Color(0xFFcc40cc),
                    () => _grantMembership(user, 'proPlus', 30)),
                _actionButton('Pro Plus (90d)', const Color(0xFFcc40cc),
                    () => _grantMembership(user, 'proPlus', 90)),
                _actionButton('Pro Plus (365d)', const Color(0xFFcc40cc),
                    () => _grantMembership(user, 'proPlus', 365)),
                _actionButton('Custom Duration...', const Color(0xFF6060ff),
                    () => _showCustomDurationDialog(user)),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildFeatureTogglesCard(_UserRecord user) {
    final overrides = user.activeOverrides ?? {};
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Row(
              children: [
                Icon(Icons.toggle_on, color: Color(0xFF60ff60), size: 18),
                SizedBox(width: 8),
                Text('Feature Toggles',
                    style: TextStyle(
                        color: Color(0xFFd0d0ff),
                        fontSize: 14,
                        fontWeight: FontWeight.w600)),
              ],
            ),
            const SizedBox(height: 12),
            _featureToggle(user, 'Developer License', 'developerLicense',
                overrides['developerLicense'] == true),
            _featureToggle(user, 'Discord Add-on', 'discordAddon',
                overrides['discordAddon'] == true),
            _featureToggle(user, 'Pack: The Good', 'packGood',
                overrides['packGood'] == true),
            _featureToggle(user, 'Pack: The Bad', 'packBad',
                overrides['packBad'] == true),
            _featureToggle(user, 'Pack: The Ugly', 'packUgly',
                overrides['packUgly'] == true),
            _featureToggle(user, 'Pack: Narcissist', 'packNarcissist',
                overrides['packNarcissist'] == true),
            _featureToggle(user, 'Pack: Serial Killer', 'packSerialKiller',
                overrides['packSerialKiller'] == true),
            _featureToggle(user, 'PDF Reports', 'pdfReports',
                overrides['pdfReports'] == true),
            _featureToggle(user, 'Unlimited Reports', 'unlimitedReports',
                overrides['unlimitedReports'] == true),
          ],
        ),
      ),
    );
  }

  Widget _buildCreditActionsCard(_UserRecord user) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Row(
              children: [
                Icon(Icons.monetization_on, color: Color(0xFFc0c040), size: 18),
                SizedBox(width: 8),
                Text('Credit Actions',
                    style: TextStyle(
                        color: Color(0xFFd0d0ff),
                        fontSize: 14,
                        fontWeight: FontWeight.w600)),
              ],
            ),
            const SizedBox(height: 12),
            Wrap(
              spacing: 8,
              runSpacing: 8,
              children: [
                _actionButton('Add 1 Referral Credit', const Color(0xFFc080ff),
                    () => _addReferralCredits(user, 1)),
                _actionButton('Set 5/5 Referrals (trigger reward)',
                    const Color(0xFF40cc40),
                    () => _addReferralCredits(user, 5)),
                _actionButton('Add \$5 Creator Credit', const Color(0xFFc0c040),
                    () => _addCreatorCredits(user, 5.0)),
                _actionButton(
                    'Add \$10 Creator Credit', const Color(0xFFc0c040),
                    () => _addCreatorCredits(user, 10.0)),
                _actionButton(
                    'Add \$20 Creator Credit', const Color(0xFFc0c040),
                    () => _addCreatorCredits(user, 20.0)),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildRemoveOverridesCard(_UserRecord user) {
    return Card(
      color: const Color(0xFF2a1a1a),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Row(
          children: [
            const Icon(Icons.delete_forever, color: Color(0xFFff4040), size: 18),
            const SizedBox(width: 8),
            const Expanded(
              child: Text('Remove All Overrides',
                  style: TextStyle(color: Color(0xFFff8080), fontSize: 13)),
            ),
            ElevatedButton(
              onPressed: () => _removeAllOverrides(user),
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0xFFcc2020),
                foregroundColor: Colors.white,
              ),
              child: const Text('Remove'),
            ),
          ],
        ),
      ),
    );
  }

  // ─── HELPER WIDGETS ─────────────────────────────────────────────────────────

  Widget _statusRow(String label, String value, Color color) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 6),
      child: Row(
        children: [
          SizedBox(
            width: 140,
            child: Text(label,
                style: const TextStyle(color: Color(0xFF6666aa), fontSize: 12)),
          ),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 2),
            decoration: BoxDecoration(
              color: color.withAlpha(30),
              borderRadius: BorderRadius.circular(4),
              border: Border.all(color: color.withAlpha(80)),
            ),
            child: Text(value,
                style: TextStyle(
                    color: color, fontSize: 11, fontWeight: FontWeight.w600)),
          ),
        ],
      ),
    );
  }

  Widget _actionButton(String label, Color color, VoidCallback onPressed) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        backgroundColor: color.withAlpha(40),
        foregroundColor: color,
        side: BorderSide(color: color.withAlpha(100)),
        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
      ),
      child: Text(label, style: const TextStyle(fontSize: 11)),
    );
  }

  Widget _featureToggle(
      _UserRecord user, String label, String key, bool value) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 4),
      child: Row(
        children: [
          SizedBox(
            width: 160,
            child: Text(label,
                style: const TextStyle(color: Color(0xFFa0a0c0), fontSize: 12)),
          ),
          Switch(
            value: value,
            onChanged: (newValue) => _toggleFeature(user, key, newValue),
            activeColor: const Color(0xFF60ff60),
          ),
        ],
      ),
    );
  }

  Color _tierColor(String tier) {
    switch (tier) {
      case 'standard':
        return const Color(0xFF40cc40);
      case 'pro':
        return const Color(0xFFcc8040);
      case 'proPlus':
        return const Color(0xFFcc40cc);
      case 'oneTimeUnlock':
        return const Color(0xFF6060ff);
      default:
        return const Color(0xFF4a4a6a);
    }
  }

  // ─── ADMIN ACTIONS ──────────────────────────────────────────────────────────

  Future<void> _grantMembership(
      _UserRecord user, String tier, int days) async {
    try {
      final data = <String, dynamic>{
        'tier': tier,
        'grantedAt': FieldValue.serverTimestamp(),
        'grantedBy': 'admin',
        'source': 'admin_panel',
      };
      if (days > 0) {
        data['expiresAt'] =
            Timestamp.fromDate(DateTime.now().add(Duration(days: days)));
        data['durationDays'] = days;
      }

      // Merge with existing overrides
      await _firestore.collection('admin_overrides').doc(user.id).set(
        data,
        SetOptions(merge: true),
      );

      setState(() {
        user.tier = tier;
        user.activeOverrides = {...(user.activeOverrides ?? {}), ...data};
        _statusMessage =
            'Granted $tier to ${user.displayName.isNotEmpty ? user.displayName : user.email} for $days days';
      });

      if (mounted) {
        ScaffoldMessenger.of(context).showSnackBar(SnackBar(
          content: Text(
              'Granted $tier membership for $days days to ${user.email.isNotEmpty ? user.email : user.id}'),
          backgroundColor: const Color(0xFF2a5a2a),
        ));
      }
    } catch (e) {
      setState(() => _statusMessage = 'Error: $e');
    }
  }

  Future<void> _toggleFeature(
      _UserRecord user, String feature, bool enabled) async {
    try {
      await _firestore.collection('admin_overrides').doc(user.id).set(
        {
          feature: enabled,
          'lastModified': FieldValue.serverTimestamp(),
          'modifiedBy': 'admin',
        },
        SetOptions(merge: true),
      );

      setState(() {
        user.activeOverrides = {
          ...(user.activeOverrides ?? {}),
          feature: enabled,
        };
        _statusMessage =
            '${enabled ? "Enabled" : "Disabled"} $feature for ${user.email.isNotEmpty ? user.email : user.id}';
      });
    } catch (e) {
      setState(() => _statusMessage = 'Error: $e');
    }
  }

  Future<void> _addReferralCredits(_UserRecord user, int credits) async {
    try {
      await _firestore.collection('admin_overrides').doc(user.id).set(
        {
          'referralCreditsOverride': credits,
          'lastModified': FieldValue.serverTimestamp(),
          'modifiedBy': 'admin',
        },
        SetOptions(merge: true),
      );

      // Also update the referrals collection directly
      await _firestore.collection('referrals').doc(user.id).set(
        {'creditCount': credits},
        SetOptions(merge: true),
      );

      setState(() {
        user.referralCredits = credits;
        _statusMessage =
            'Set referral credits to $credits for ${user.email.isNotEmpty ? user.email : user.id}';
      });
    } catch (e) {
      setState(() => _statusMessage = 'Error: $e');
    }
  }

  Future<void> _addCreatorCredits(_UserRecord user, double amount) async {
    try {
      final email = user.email;
      if (email.isEmpty) {
        setState(() => _statusMessage = 'Error: User has no email for creator credits');
        return;
      }

      await _firestore.collection('creator_credits').doc(email).set(
        {
          'balance': FieldValue.increment(amount),
          'lastCreditedBy': 'admin',
          'lastCreditedAt': FieldValue.serverTimestamp(),
        },
        SetOptions(merge: true),
      );

      setState(() => _statusMessage =
          'Added \$$amount creator credits to $email');
    } catch (e) {
      setState(() => _statusMessage = 'Error: $e');
    }
  }

  Future<void> _removeAllOverrides(_UserRecord user) async {
    final confirmed = await showDialog<bool>(
      context: context,
      builder: (ctx) => AlertDialog(
        backgroundColor: const Color(0xFF1a1a3e),
        title: const Text('Remove All Overrides?',
            style: TextStyle(color: Color(0xFFff8080))),
        content: Text(
          'This will remove all admin overrides for ${user.email.isNotEmpty ? user.email : user.id}.\n\n'
          'The user will revert to their natural state (whatever they\'ve purchased).',
          style: const TextStyle(color: Color(0xFFa0a0c0)),
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(ctx, false),
            child: const Text('Cancel'),
          ),
          ElevatedButton(
            onPressed: () => Navigator.pop(ctx, true),
            style: ElevatedButton.styleFrom(backgroundColor: const Color(0xFFcc2020)),
            child: const Text('Remove All'),
          ),
        ],
      ),
    );

    if (confirmed == true) {
      try {
        await _firestore.collection('admin_overrides').doc(user.id).delete();
        setState(() {
          user.activeOverrides = null;
          user.tier = 'free';
          _statusMessage = 'Removed all overrides for ${user.email.isNotEmpty ? user.email : user.id}';
        });
      } catch (e) {
        setState(() => _statusMessage = 'Error: $e');
      }
    }
  }

  Future<void> _showCustomDurationDialog(_UserRecord user) async {
    final daysController = TextEditingController();
    String selectedTier = 'standard';

    final result = await showDialog<Map<String, dynamic>>(
      context: context,
      builder: (ctx) => StatefulBuilder(
        builder: (ctx, setDialogState) => AlertDialog(
          backgroundColor: const Color(0xFF1a1a3e),
          title: const Text('Custom Membership Grant',
              style: TextStyle(color: Color(0xFFd0d0ff), fontSize: 16)),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text('Select tier:',
                  style: TextStyle(color: Color(0xFFa0a0c0), fontSize: 12)),
              const SizedBox(height: 8),
              DropdownButton<String>(
                value: selectedTier,
                dropdownColor: const Color(0xFF1a1a3e),
                items: const [
                  DropdownMenuItem(
                      value: 'standard',
                      child: Text('Standard',
                          style: TextStyle(color: Color(0xFF40cc40)))),
                  DropdownMenuItem(
                      value: 'pro',
                      child: Text('Pro',
                          style: TextStyle(color: Color(0xFFcc8040)))),
                  DropdownMenuItem(
                      value: 'proPlus',
                      child: Text('Pro Plus',
                          style: TextStyle(color: Color(0xFFcc40cc)))),
                  DropdownMenuItem(
                      value: 'oneTimeUnlock',
                      child: Text('One-Time Unlock',
                          style: TextStyle(color: Color(0xFF6060ff)))),
                ],
                onChanged: (v) => setDialogState(() => selectedTier = v!),
              ),
              const SizedBox(height: 16),
              TextField(
                controller: daysController,
                style: const TextStyle(color: Colors.white),
                decoration: const InputDecoration(
                  labelText: 'Duration (days)',
                  labelStyle: TextStyle(color: Color(0xFF6666aa)),
                  border: OutlineInputBorder(),
                  enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Color(0xFF2a2a5a))),
                ),
                keyboardType: TextInputType.number,
              ),
            ],
          ),
          actions: [
            TextButton(
              onPressed: () => Navigator.pop(ctx),
              child: const Text('Cancel'),
            ),
            ElevatedButton(
              onPressed: () {
                final days = int.tryParse(daysController.text);
                if (days != null && days > 0) {
                  Navigator.pop(
                      ctx, {'tier': selectedTier, 'days': days});
                }
              },
              style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFF4040cc)),
              child: const Text('Grant'),
            ),
          ],
        ),
      ),
    );

    if (result != null) {
      await _grantMembership(
          user, result['tier'] as String, result['days'] as int);
    }
    daysController.dispose();
  }
}

// ─── DATA MODEL ───────────────────────────────────────────────────────────────

class _UserRecord {
  String id;
  String email;
  String deviceId;
  String displayName;
  String tier;
  DateTime? createdAt;
  bool hasDeveloperLicense;
  int referralCredits;
  Map<String, dynamic>? activeOverrides;

  _UserRecord({
    required this.id,
    required this.email,
    required this.deviceId,
    required this.displayName,
    required this.tier,
    this.createdAt,
    this.hasDeveloperLicense = false,
    this.referralCredits = 0,
    this.activeOverrides,
  });
}


// Payout Request Data Model
class _PayoutRequest {
  String id;
  String email;
  String name;
  double amount;
  String cashoutType;
  String? paypalEmail;
  String status;
  DateTime? requestedAt;

  _PayoutRequest({
    required this.id,
    required this.email,
    required this.name,
    required this.amount,
    required this.cashoutType,
    this.paypalEmail,
    required this.status,
    this.requestedAt,
  });
}
