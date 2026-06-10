path = r'C:\My Projects\AIRTA\lib\services\user_submitted_packs_service.dart'
with open(path, encoding='utf-8') as f:
    c = f.read()

SEARCH = (
    "      final snapshot = await firestore\n"
    "          .collection('user_submitted_packs')\n"
    "          .where('status', isEqualTo: 'approved')\n"
    "          .orderBy('createdAt', descending: true)\n"
    "          .get();\n"
    "\n"
    "      _availablePacks = snapshot.docs\n"
    "          .map((doc) => UserSubmittedPack.fromFirestore(doc))\n"
    "          .toList();"
)

REPLACE = (
    "      final snapshot = await firestore\n"
    "          .collection('user_submitted_packs')\n"
    "          .where('status', isEqualTo: 'approved')\n"
    "          .get();\n"
    "\n"
    "      // Sort client-side by submissionDate descending — avoids needing a\n"
    "      // composite Firestore index on (status + createdAt) which was\n"
    "      // throwing and showing 'Failed to load packs'.\n"
    "      _availablePacks = snapshot.docs\n"
    "          .map((doc) => UserSubmittedPack.fromFirestore(doc))\n"
    "          .toList()\n"
    "          ..sort((a, b) => b.submissionDate.compareTo(a.submissionDate));"
)

assert SEARCH in c, "Block not found"
c2 = c.replace(SEARCH, REPLACE, 1)
assert c2 != c
with open(path, 'w', encoding='utf-8') as f:
    f.write(c2)
print("Done.")
