import sys
sys.stdout.reconfigure(encoding='utf-8')

with open(r'C:\My Projects\AIRTA\lib\services\user_submitted_packs_service.dart', encoding='utf-8') as f:
    content = f.read()

OLD = """  /// Fetch approved packs from Firebase Firestore.
  Future<void> fetchPacks() async {
    _isLoading = true;
    _error = null;
    notifyListeners();

    try {
      final firestore = FirebaseFirestore.instance;
      final snapshot = await firestore
          .collection('user_submitted_packs')
          .where('status', isEqualTo: 'approved')
          .get();

      // Sort client-side by submissionDate descending — avoids needing a
      // composite Firestore index on (status + createdAt) which was
      // throwing and showing 'Failed to load packs'.
      _availablePacks = snapshot.docs
          .map((doc) => UserSubmittedPack.fromFirestore(doc))
          .toList()
          ..sort((a, b) => b.submissionDate.compareTo(a.submissionDate));

      _isLoading = false;
      notifyListeners();
    } catch (e) {
      debugPrint('UserSubmittedPacksService.fetchPacks error: $e');
      _error = e.toString();
      _isLoading = false;
      notifyListeners();
    }
  }"""

NEW = """  /// Fetch approved and pending_review packs from Firebase Firestore.
  /// Submissions are auto-approved client-side; pending_review packs appear
  /// immediately and are translated/approved in the background.
  Future<void> fetchPacks() async {
    _isLoading = true;
    _error = null;
    notifyListeners();

    try {
      final firestore = FirebaseFirestore.instance;

      // Fetch both approved and pending_review packs in parallel
      final snapshots = await Future.wait([
        firestore
            .collection('user_submitted_packs')
            .where('status', isEqualTo: 'approved')
            .get(),
        firestore
            .collection('user_submitted_packs')
            .where('status', isEqualTo: 'pending_review')
            .get(),
      ]);

      final allDocs = [...snapshots[0].docs, ...snapshots[1].docs];

      // Sort client-side by submissionDate descending
      _availablePacks = allDocs
          .map((doc) => UserSubmittedPack.fromFirestore(doc))
          .toList()
          ..sort((a, b) => b.submissionDate.compareTo(a.submissionDate));

      _isLoading = false;
      notifyListeners();
    } catch (e) {
      debugPrint('UserSubmittedPacksService.fetchPacks error: $e');
      _error = e.toString();
      _isLoading = false;
      notifyListeners();
    }
  }"""

if OLD in content:
    content = content.replace(OLD, NEW, 1)
    print('fetchPacks patched OK')
else:
    print('ERROR: fetchPacks old string not found')

# Also patch autoTranslateAllPending to handle pending_review and auto-approve
OLD2 = """      final snapshot = await firestore
          .collection('user_submitted_packs')
          .where('status', isEqualTo: 'approved')
          .where('translationComplete', isEqualTo: false)
          .limit(10) // Process in batches
          .get();"""

NEW2 = """      // Also process pending_review packs — translate then auto-approve them
      final snapshots = await Future.wait([
        firestore
            .collection('user_submitted_packs')
            .where('status', isEqualTo: 'approved')
            .where('translationComplete', isEqualTo: false)
            .limit(10)
            .get(),
        firestore
            .collection('user_submitted_packs')
            .where('status', isEqualTo: 'pending_review')
            .where('translationComplete', isEqualTo: false)
            .limit(10)
            .get(),
      ]);
      final snapshot = type('_FakeSnap', (), {'docs': [*snapshots[0].docs, *snapshots[1].docs]})();"""

# The above is too complex — instead patch differently: just change the where clause to use whereIn
OLD2 = """      final snapshot = await firestore
          .collection('user_submitted_packs')
          .where('status', isEqualTo: 'approved')
          .where('translationComplete', isEqualTo: false)
          .limit(10) // Process in batches
          .get();

      int translated = 0;
      for (final doc in snapshot.docs) {
        final success = await translatePackToAllLanguages(doc.id);
        if (success) translated++;
        // Delay to avoid rate limiting
        await Future.delayed(const Duration(milliseconds: 200));
      }"""

NEW2 = """      // Fetch approved + pending_review packs needing translation
      final approvedSnap = await firestore
          .collection('user_submitted_packs')
          .where('status', isEqualTo: 'approved')
          .where('translationComplete', isEqualTo: false)
          .limit(10)
          .get();
      final pendingSnap = await firestore
          .collection('user_submitted_packs')
          .where('status', isEqualTo: 'pending_review')
          .where('translationComplete', isEqualTo: false)
          .limit(10)
          .get();
      final allDocs = [...approvedSnap.docs, ...pendingSnap.docs];

      int translated = 0;
      for (final doc in allDocs) {
        final success = await translatePackToAllLanguages(doc.id);
        if (success) {
          translated++;
          // Auto-approve pending_review packs after successful translation
          final data = doc.data() as Map<String, dynamic>;
          if ((data['status'] as String?) == 'pending_review') {
            await firestore
                .collection('user_submitted_packs')
                .doc(doc.id)
                .update({'status': 'approved', 'approvedAt': FieldValue.serverTimestamp()});
          }
        }
        await Future.delayed(const Duration(milliseconds: 200));
      }"""

if OLD2 in content:
    content = content.replace(OLD2, NEW2, 1)
    print('autoTranslateAllPending patched OK')
else:
    print('WARNING: autoTranslateAllPending old string not found — skipping')

with open(r'C:\My Projects\AIRTA\lib\services\user_submitted_packs_service.dart', 'w', encoding='utf-8') as f:
    f.write(content)
print('Saved.')
