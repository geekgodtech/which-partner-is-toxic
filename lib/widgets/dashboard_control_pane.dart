import 'dart:convert';
import 'dart:io';

import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';
import 'package:which_partner_is_toxic/controllers/toxicity_analyzer_controller.dart';
import 'package:which_partner_is_toxic/models.dart';
import 'package:which_partner_is_toxic/widgets/membership_landing_page.dart';
import 'package:which_partner_is_toxic/widgets/sms_conversation_picker.dart';
import 'package:which_partner_is_toxic/widgets/ios_sms_capture_screen.dart';

class DashboardControlPane extends StatefulWidget {
  const DashboardControlPane({super.key});

  @override
  State<DashboardControlPane> createState() => _DashboardControlPaneState();
}

class _DashboardControlPaneState extends State<DashboardControlPane> {
  final ScrollController _scrollController = ScrollController();
  bool _showScrollToTop = false;

  @override
  void initState() {
    super.initState();
    _scrollController.addListener(_onScroll);
  }

  @override
  void dispose() {
    _scrollController.removeListener(_onScroll);
    _scrollController.dispose();
    super.dispose();
  }

  void _onScroll() {
    // Show button when scrolled down more than 200 pixels
    if (_scrollController.offset > 200 && !_showScrollToTop) {
      setState(() => _showScrollToTop = true);
    } else if (_scrollController.offset <= 200 && _showScrollToTop) {
      setState(() => _showScrollToTop = false);
    }
  }

  void _scrollToTop() {
    _scrollController.animateTo(
      0,
      duration: const Duration(milliseconds: 500),
      curve: Curves.easeOutCubic,
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Stack(
        children: [
          Consumer<ToxicityAnalyzerController>(
            builder: (context, controller, child) {
              return LayoutBuilder(
                builder: (context, constraints) {
                  final actionColumnCount = _responsiveColumnCount(
                    constraints.maxWidth,
                  ).clamp(1, 2);

                  return SingleChildScrollView(
                    controller: _scrollController,
                    padding: const EdgeInsets.all(16),
                    child: ConstrainedBox(
                      constraints: const BoxConstraints(minWidth: 0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          Text(
                            'Select Conversation to Analyze:',
                            style: Theme.of(context).textTheme.titleLarge,
                          ),
                          const SizedBox(height: 12),
                          _ResponsiveButtonGrid(
                            columnCount: actionColumnCount,
                            children: [
                              Row(
                                children: [
                                  Expanded(
                                    child: _TextingApplicationButton(
                                      controller: controller,
                                    ),
                                  ),
                                  const SizedBox(width: 8),
                                  Expanded(
                                    child: _FromFileButton(
                                      controller: controller,
                                    ),
                                  ),
                                ],
                              ),
                              _AnalysisActionSection(controller: controller),
                              _GoProButton(controller: controller),
                              _RandomAnalysisSection(controller: controller),
                            ],
                          ),
                          const SizedBox(height: 20),
                          _IngestionStatusCard(controller: controller),
                          const SizedBox(height: 20),
                          _MetricSelectorSection(controller: controller),
                        ],
                      ),
                    ),
                  );
                },
              );
            },
          ),
          // Scroll to top button
          if (_showScrollToTop)
            Positioned(
              right: 16,
              bottom: 16,
              child: FloatingActionButton(
                onPressed: _scrollToTop,
                tooltip: 'Scroll to top',
                child: const Icon(Icons.arrow_upward),
              ),
            ),
        ],
      ),
    );
  }
}

int _responsiveColumnCount(double width) {
  if (width >= 1050) {
    return 4;
  }

  if (width >= 760) {
    return 3;
  }

  if (width >= 520) {
    return 2;
  }

  return 1;
}

int _metricColumnCount(double width) {
  if (width >= 1050) {
    return 6;
  }

  if (width >= 760) {
    return 5;
  }

  if (width >= 520) {
    return 3;
  }

  return 1;
}

class _ResponsiveButtonGrid extends StatelessWidget {
  final int columnCount;
  final List<Widget> children;

  const _ResponsiveButtonGrid({
    required this.columnCount,
    required this.children,
  });

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        return Wrap(
          spacing: 12,
          runSpacing: 12,
          children: children
              .map(
                (child) => SizedBox(
                  width:
                      (constraints.maxWidth - (12 * (columnCount - 1))) /
                      columnCount,
                  child: child,
                ),
              )
              .toList(),
        );
      },
    );
  }
}

class _RandomAnalysisSection extends StatelessWidget {
  final ToxicityAnalyzerController controller;

  const _RandomAnalysisSection({required this.controller});

  @override
  Widget build(BuildContext context) {
    final canRun =
        controller.activeThread != null &&
        !controller.isAnalyzing &&
        !controller.isRandomizingMetrics &&
        !controller.isIngesting;

    return AnimatedContainer(
      duration: const Duration(milliseconds: 240),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        gradient: controller.isRandomizingMetrics
            ? LinearGradient(
                colors: [
                  Theme.of(context).colorScheme.tertiary,
                  Theme.of(context).colorScheme.primary,
                  Theme.of(context).colorScheme.secondary,
                ],
              )
            : null,
        boxShadow: controller.isRandomizingMetrics
            ? [
                BoxShadow(
                  color: Theme.of(
                    context,
                  ).colorScheme.primary.withValues(alpha: 0.35),
                  blurRadius: 18,
                  spreadRadius: 2,
                ),
              ]
            : null,
      ),
      child: GestureDetector(
        onLongPress: canRun
            ? () {
                HapticFeedback.mediumImpact();
                controller.isCurrentReportUnlocked = true;
                controller.selectRandomMetricsAndExecuteAnalysis();
              }
            : null,
        child: ElevatedButton.icon(
          onPressed: canRun
              ? controller.selectRandomMetricsAndExecuteAnalysis
              : null,
          icon: const Icon(Icons.help_outline),
          label: Text(
            controller.isRandomizingMetrics
                ? 'Spinning the metric wheel...'
                : canRun
                ? 'Randomly select ${ToxicityAnalyzerController.requiredMetricSelectionCount} Metrics and\nAnalyze'
                : 'Load a conversation to\nrandomly select and analyze',
            textAlign: TextAlign.center,
          ),
          style: ElevatedButton.styleFrom(
            minimumSize: const Size.fromHeight(56),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(16),
            ),
          ),
        ),
      ),
    );
  }
}

class _TextingApplicationButton extends StatelessWidget {
  final ToxicityAnalyzerController controller;

  const _TextingApplicationButton({required this.controller});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton.icon(
      onPressed: controller.isIngesting
          ? null
          : () => _openSmsConversationPicker(context),
      icon: controller.isIngesting
          ? const SizedBox.square(
              dimension: 18,
              child: CircularProgressIndicator(strokeWidth: 2),
            )
          : const Icon(Icons.sms_outlined),
      label: const Text('From SMS', textAlign: TextAlign.center),
      style: ElevatedButton.styleFrom(minimumSize: const Size.fromHeight(50)),
    );
  }

  Future<void> _openSmsConversationPicker(BuildContext context) async {
    print('DEBUG: Opening SMS conversation picker...');
    try {
      await Navigator.of(context).push(
        MaterialPageRoute(
          builder: (context) {
            // On iOS, use screenshot capture method
            // On Android, use direct SMS access
            if (Platform.isIOS) {
              print('DEBUG: Building IosSmssCaptureScreen widget...');
              return const IosSmssCaptureScreen();
            } else {
              print('DEBUG: Building SmsConversationPicker widget...');
              return SmsConversationPicker(controller: controller);
            }
          },
        ),
      );
      print('DEBUG: SMS picker closed');
    } catch (e, stackTrace) {
      print('ERROR: Exception opening SMS picker: $e');
      print('ERROR: Stack trace: $stackTrace');

      if (context.mounted) {
        showDialog(
          context: context,
          builder: (context) => AlertDialog(
            title: const Text('Error Opening SMS Picker'),
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
    }
  }
}

class _FromFileButton extends StatelessWidget {
  final ToxicityAnalyzerController controller;

  const _FromFileButton({required this.controller});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton.icon(
      onPressed: controller.isIngesting ? null : () => _pickFile(context),
      icon: controller.isIngesting
          ? const SizedBox.square(
              dimension: 18,
              child: CircularProgressIndicator(strokeWidth: 2),
            )
          : const Icon(Icons.file_upload_outlined),
      label: const Text('From File', textAlign: TextAlign.center),
      style: ElevatedButton.styleFrom(minimumSize: const Size.fromHeight(50)),
    );
  }

  Future<void> _pickFile(BuildContext context) async {
    try {
      final result = await FilePicker.pickFiles(
        type: FileType.custom,
        allowedExtensions: ['txt', 'doc', 'docx', 'pdf'],
        allowMultiple: false,
      );

      if (result == null || result.files.isEmpty) {
        return; // User cancelled
      }

      final file = result.files.first;

      if (context.mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text('Selected: ${file.name}'),
            duration: const Duration(seconds: 2),
          ),
        );
      }

      // Read file content to validate it's SMS and not other platforms
      String? fileContent;
      if (file.path != null) {
        try {
          final fileBytes = await File(file.path!).readAsBytes();
          fileContent = utf8.decode(fileBytes, allowMalformed: true);
        } catch (e) {
          print('ERROR: Could not read file: $e');
        }
      } else if (file.bytes != null) {
        fileContent = utf8.decode(file.bytes!, allowMalformed: true);
      }

      // Validate it's not from other messaging platforms
      if (fileContent != null) {
        final validationError = _validateSmsFile(fileContent, file.name);
        if (validationError != null) {
          if (context.mounted) {
            showDialog(
              context: context,
              builder: (context) => AlertDialog(
                title: const Text('Invalid File'),
                content: Text(validationError),
                actions: [
                  TextButton(
                    onPressed: () => Navigator.pop(context),
                    child: const Text('OK'),
                  ),
                ],
              ),
            );
          }
          return;
        }
      }

      // TODO: Parse the file and load it into the controller
      // For now, just show a message
      if (context.mounted) {
        showDialog(
          context: context,
          builder: (context) => AlertDialog(
            title: const Text('File Import'),
            content: Text(
              'File parsing not yet implemented.\n\n'
              'Selected file: ${file.name}\n'
              'Size: ${file.size} bytes\n'
              'Type: ${file.extension}',
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
    } catch (e, stackTrace) {
      print('ERROR: Exception picking file: $e');
      print('ERROR: Stack trace: $stackTrace');

      if (context.mounted) {
        showDialog(
          context: context,
          builder: (context) => AlertDialog(
            title: const Text('Error Picking File'),
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
    }
  }

  /// Validates that the file is an SMS export and not from other messaging platforms
  /// Returns error message if invalid, null if valid
  String? _validateSmsFile(String content, String filename) {
    final lowerContent = content.toLowerCase();
    final lowerFilename = filename.toLowerCase();

    // WhatsApp detection - look for export format patterns
    // WhatsApp exports have format: [12/25/23, 3:45 PM] Name: message
    if (lowerFilename.contains('whatsapp') ||
        RegExp(
          r'\[\d{1,2}/\d{1,2}/\d{2,4},\s*\d{1,2}:\d{2}',
        ).hasMatch(content) ||
        lowerContent.contains('this message was deleted') ||
        lowerContent.contains('messages and calls are end-to-end encrypted')) {
      return 'WhatsApp chat exports are not supported with the SMS import feature.\n\n'
          'Please use the Pro membership (\$19.99/month) to analyze WhatsApp conversations.';
    }

    // Telegram detection - look for export format
    // Telegram exports often have specific JSON structure or export tool signatures
    if (lowerFilename.contains('telegram') ||
        lowerContent.contains('"type": "message"') &&
            lowerContent.contains('"from"') ||
        lowerContent.contains('telegram export')) {
      return 'Telegram chat exports are not supported with the SMS import feature.\n\n'
          'Please use the Pro membership (\$19.99/month) to analyze Telegram conversations.';
    }

    // Facebook Messenger detection - look for JSON export format
    if (lowerFilename.contains('messenger') ||
        lowerFilename.contains('facebook') ||
        lowerContent.contains('"sender_name"') &&
            lowerContent.contains('"timestamp_ms"') ||
        lowerContent.contains('facebook messenger')) {
      return 'Facebook Messenger exports are not supported with the SMS import feature.\n\n'
          'Please use the Pro membership (\$19.99/month) to analyze Messenger conversations.';
    }

    // Instagram DM detection
    if (lowerFilename.contains('instagram') ||
        lowerContent.contains('"participants"') &&
            lowerContent.contains('"instagram')) {
      return 'Instagram DM exports are not supported with the SMS import feature.\n\n'
          'Please use the Pro membership (\$19.99/month) to analyze Instagram conversations.';
    }

    // LinkedIn detection
    if (lowerFilename.contains('linkedin') ||
        lowerContent.contains('linkedin.com/messaging')) {
      return 'LinkedIn message exports are not supported with the SMS import feature.\n\n'
          'Please use the Pro membership (\$19.99/month) to analyze LinkedIn conversations.';
    }

    // Discord detection - look for export tool signatures or JSON format
    if (lowerFilename.contains('discord') ||
        lowerContent.contains('discordchatexporter') ||
        lowerContent.contains('"guild"') &&
            lowerContent.contains('"channel"') &&
            lowerContent.contains('"messages"') ||
        lowerContent.contains('discord - ') &&
            lowerContent.contains(' [') &&
            lowerContent.contains('] ')) {
      return 'Discord chat exports are not supported with the SMS import feature.\n\n'
          'Please use the Pro Plus membership (\$24.99/month) to analyze Discord conversations.\n'
          'Pro Plus includes everything in Pro (\$19.99/month) plus Discord analysis for only \$4.99 more.';
    }

    // Slack detection - look for export format
    if (lowerFilename.contains('slack') ||
        lowerContent.contains('"client_msg_id"') &&
            lowerContent.contains('"type": "message"') ||
        lowerContent.contains('slack export')) {
      return 'Slack message exports are not supported with the SMS import feature.\n\n'
          'Please use the Pro membership (\$19.99/month) to analyze Slack conversations.';
    }

    // Signal detection
    if (lowerFilename.contains('signal') ||
        lowerContent.contains('signal backup') ||
        lowerContent.contains('signal export')) {
      return 'Signal chat exports are not supported with the SMS import feature.\n\n'
          'Please use the Pro membership (\$19.99/month) to analyze Signal conversations.';
    }

    // WeChat detection
    if (lowerFilename.contains('wechat') ||
        lowerContent.contains('wechat export')) {
      return 'WeChat exports are not supported with the SMS import feature.\n\n'
          'Please use the Pro membership (\$19.99/month) to analyze WeChat conversations.';
    }

    // Snapchat detection
    if (lowerFilename.contains('snapchat') ||
        lowerContent.contains('snapchat data')) {
      return 'Snapchat exports are not supported with the SMS import feature.\n\n'
          'Please use the Pro membership (\$19.99/month) to analyze Snapchat conversations.';
    }

    return null; // Valid SMS file
  }
}

class _GoProButton extends StatelessWidget {
  final ToxicityAnalyzerController controller;

  const _GoProButton({required this.controller});

  @override
  Widget build(BuildContext context) {
    return OutlinedButton.icon(
      onPressed: () {
        Navigator.of(context).push(
          MaterialPageRoute<void>(
            builder: (context) => const MembershipLandingPage(),
          ),
        );
      },
      icon: const Icon(Icons.assignment_outlined),
      label: const Text(
        'Become a member to get full analysis report',
        textAlign: TextAlign.center,
      ),
      style: OutlinedButton.styleFrom(minimumSize: const Size.fromHeight(50)),
    );
  }
}

class _IngestionStatusCard extends StatelessWidget {
  final ToxicityAnalyzerController controller;

  const _IngestionStatusCard({required this.controller});

  @override
  Widget build(BuildContext context) {
    final activeThread = controller.activeThread;
    final message =
        controller.errorMessage ??
        controller.statusMessage ??
        'No conversation loaded yet. Select a conversation to analyze.';
    final color = controller.errorMessage == null
        ? Theme.of(context).colorScheme.secondaryContainer
        : Theme.of(context).colorScheme.errorContainer;

    return ColoredBox(
      color: color,
      child: Padding(
        padding: const EdgeInsets.all(12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Current State of Analysis',
              style: Theme.of(context).textTheme.titleMedium,
            ),
            const SizedBox(height: 8),
            if (controller.isAnalyzing) ...[
              const Row(
                children: [
                  SizedBox(
                    width: 18,
                    height: 18,
                    child: CircularProgressIndicator(strokeWidth: 2),
                  ),
                  SizedBox(width: 8),
                  Text('AI is analyzing the selected metrics...'),
                ],
              ),
              const SizedBox(height: 8),
            ],
            SelectableText(message),
            if (activeThread != null) ...[
              const SizedBox(height: 8),
              SelectableText('Active source: ${activeThread.platformSource}'),
              SelectableText('Messages loaded: ${activeThread.totalMessages}'),
            ],
            const SizedBox(height: 8),
            if (controller.isConnectedAccountsUnlocked)
              const Text('Pro membership: no daily usage limit.')
            else if (controller.isPremiumUnlocked)
              Text(
                'Standard membership: ${controller.standardReportsRemaining}/${ToxicityAnalyzerController.standardReportsPerDayLimit} reports remaining in this 24-hour period.',
              )
            else
              const Text(
                'Free tier: SMS report preview is limited to the visible report sample.',
              ),
          ],
        ),
      ),
    );
  }
}

class _MetricSelectorSection extends StatelessWidget {
  final ToxicityAnalyzerController controller;

  const _MetricSelectorSection({required this.controller});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        final columnCount = _metricColumnCount(constraints.maxWidth);

        return Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Psychological Metrics',
                style: Theme.of(context).textTheme.titleLarge,
              ),
              const SizedBox(height: 8),
              Row(
                children: [
                  Expanded(
                    child: Text(
                      'Select up to ${ToxicityAnalyzerController.requiredMetricSelectionCount}. Current: ${controller.selectedMetricCount}',
                    ),
                  ),
                  TextButton.icon(
                    onPressed: controller.selectedMetricCount > 0
                        ? controller.clearMetricSelection
                        : null,
                    icon: const Icon(Icons.clear_all, size: 16),
                    label: const Text('Clear Selectons'),
                    style: TextButton.styleFrom(
                      visualDensity: VisualDensity.compact,
                      padding: const EdgeInsets.symmetric(horizontal: 8),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 6),
              const Text(
                'Fewer selected metrics produce a deeper, more concentrated analysis of those behaviors. More selected metrics produce a broader report with less detail per metric.',
              ),
              const SizedBox(height: 12),
              GridView.builder(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: columnCount,
                  crossAxisSpacing: 12,
                  mainAxisSpacing: 12,
                  childAspectRatio: 1,
                ),
                itemCount: controller.availableMetrics.length,
                itemBuilder: (context, index) {
                  final metric = controller.availableMetrics[index];
                  return _MetricButtonTile(
                    metric: metric,
                    isSelected: controller.isMetricSelected(metric),
                    color: _metricTileColor(index),
                    onPressed: () => controller.toggleMetricSelection(metric),
                  );
                },
              ),
            ],
          ),
        );
      },
    );
  }
}

Color _metricTileColor(int index) {
  final hue = (index * 137.508) % 360;
  return HSLColor.fromAHSL(1, hue, 0.72, 0.48).toColor();
}

class _MetricButtonTile extends StatelessWidget {
  final PsychologicalMetric metric;
  final bool isSelected;
  final Color color;
  final VoidCallback onPressed;

  const _MetricButtonTile({
    required this.metric,
    required this.isSelected,
    required this.color,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    final backgroundColor = isSelected
            ? color
            : Color.alphaBlend(
                Theme.of(context).colorScheme.surface.withValues(alpha: 0.62),
                color,
              ),
        foregroundColor =
            ThemeData.estimateBrightnessForColor(backgroundColor) ==
                Brightness.dark
            ? Colors.white
            : Colors.black87;

    return AnimatedScale(
      scale: isSelected ? 0.98 : 0.94,
      duration: const Duration(milliseconds: 160),
      child: Material(
        color: backgroundColor.withValues(alpha: isSelected ? 1 : 0.58),
        borderRadius: BorderRadius.circular(14),
        elevation: isSelected ? 5 : 1,
        child: InkWell(
          borderRadius: BorderRadius.circular(14),
          onTap: onPressed,
          child: Padding(
            padding: const EdgeInsets.all(10),
            child: LayoutBuilder(
              builder: (context, constraints) {
                return Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      child: FittedBox(
                        fit: BoxFit.scaleDown,
                        alignment: Alignment.topLeft,
                        child: SizedBox(
                          width: constraints.maxWidth,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Text(
                                metric.name,
                                style: TextStyle(
                                  color: foregroundColor,
                                  fontWeight: FontWeight.w700,
                                  fontSize: 24,
                                  height: 1.12,
                                ),
                              ),
                              const SizedBox(height: 8),
                              Text(
                                metric.description,
                                style: TextStyle(
                                  color: foregroundColor.withValues(
                                    alpha: isSelected ? 0.96 : 0.72,
                                  ),
                                  fontSize: 18,
                                  height: 1.18,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(height: 4),
                    Align(
                      alignment: Alignment.bottomRight,
                      child: Icon(
                        isSelected
                            ? Icons.radio_button_checked
                            : Icons.radio_button_unchecked,
                        color: foregroundColor.withValues(
                          alpha: isSelected ? 0.95 : 0.58,
                        ),
                        size: 18,
                      ),
                    ),
                  ],
                );
              },
            ),
          ),
        ),
      ),
    );
  }
}

class _AnalysisActionSection extends StatelessWidget {
  final ToxicityAnalyzerController controller;

  const _AnalysisActionSection({required this.controller});

  @override
  Widget build(BuildContext context) {
    final hasLoadedConversation = controller.activeThread != null;
    final canPressAnalyze = hasLoadedConversation && !controller.isAnalyzing;

    return GestureDetector(
      onLongPress: canPressAnalyze
          ? () {
              if (!controller.hasSelectedMetricCount) {
                return;
              }
              HapticFeedback.mediumImpact();
              controller.isCurrentReportUnlocked = true;
              controller.executeAnalysis();
            }
          : null,
      child: ElevatedButton.icon(
        onPressed: canPressAnalyze
            ? () {
                if (!controller.hasSelectedMetricCount) {
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(
                      content: Text(
                        'At least one metric needs to be selected to run the report.',
                      ),
                    ),
                  );
                  return;
                }

                controller.executeAnalysis();
              }
            : null,
        style: ElevatedButton.styleFrom(minimumSize: const Size.fromHeight(56)),
        icon: const Icon(Icons.analytics_outlined),
        label: Text(
          hasLoadedConversation
              ? 'Analyze Conversation Using Selected Metrics'
              : 'Load a conversation and\nselect at least one metric',
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
