import 'package:flutter/material.dart';
import 'package:which_partner_is_toxic/widgets/analyzer_workspace.dart';

class ToxicityAnalyzerMasterView extends StatelessWidget {
  const ToxicityAnalyzerMasterView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('AI Relationship Toxicity Analyzer'),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      body: const AnalyzerWorkspace(),
    );
  }
}
