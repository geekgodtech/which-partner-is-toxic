import 'dart:convert';
import 'dart:typed_data';

class ChatMessage {
  final String messageId;
  final String senderIdentifier;
  final String textBody;
  final DateTime timestamp;
  final List<Uint8List> mediaAttachments;
  final bool isInitiator;
  final String senderName;
  final String textContent;
  final bool isAttachment;

  ChatMessage({
    String? messageId,
    String? senderIdentifier,
    String? textBody,
    required this.senderName,
    required this.timestamp,
    String? textContent,
    List<Uint8List>? mediaAttachments,
    this.isInitiator = false,
    this.isAttachment = false,
  }) : messageId = messageId ?? timestamp.microsecondsSinceEpoch.toString(),
       senderIdentifier = senderIdentifier ?? senderName,
       textBody = textBody ?? textContent ?? '',
       textContent = textContent ?? textBody ?? '',
       mediaAttachments = mediaAttachments ?? const [];

  factory ChatMessage.fromJson(Map<String, dynamic> json) {
    return ChatMessage(
      messageId: json['messageId'] as String?,
      senderIdentifier: json['senderIdentifier'] as String?,
      textBody: json['textBody'] as String?,
      senderName:
          json['senderName'] as String? ??
          json['senderIdentifier'] as String? ??
          'Unknown',
      timestamp: DateTime.parse(json['timestamp'] as String),
      textContent:
          json['textContent'] as String? ?? json['textBody'] as String? ?? '',
      mediaAttachments: ((json['mediaAttachments'] as List<dynamic>?) ?? [])
          .map((value) => base64Decode(value as String))
          .toList(),
      isInitiator: json['isInitiator'] as bool? ?? false,
      isAttachment: json['isAttachment'] as bool? ?? false,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'messageId': messageId,
      'senderIdentifier': senderIdentifier,
      'textBody': textBody,
      'timestamp': timestamp.toIso8601String(),
      'mediaAttachments': mediaAttachments.map(base64Encode).toList(),
      'isInitiator': isInitiator,
      'senderName': senderName,
      'textContent': textContent,
      'isAttachment': isAttachment,
    };
  }

  @override
  String toString() {
    return '[$timestamp] $senderIdentifier: $textBody';
  }
}

class ConversationThread {
  final String threadId;
  final String platformSource;
  final List<ChatMessage> messages;
  final String fileSource;

  ConversationThread({
    String? threadId,
    String? platformSource,
    required this.messages,
    required this.fileSource,
  }) : threadId = threadId ?? fileSource,
       platformSource = platformSource ?? fileSource;

  factory ConversationThread.fromJson(Map<String, dynamic> json) {
    return ConversationThread(
      threadId: json['threadId'] as String?,
      platformSource: json['platformSource'] as String?,
      fileSource:
          json['fileSource'] as String? ??
          json['platformSource'] as String? ??
          'Unknown',
      messages: ((json['messages'] as List<dynamic>?) ?? [])
          .map((value) => ChatMessage.fromJson(value as Map<String, dynamic>))
          .toList(),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'threadId': threadId,
      'platformSource': platformSource,
      'messages': messages.map((message) => message.toJson()).toList(),
      'fileSource': fileSource,
    };
  }

  int get totalMessages => messages.length;
}

class PsychologicalMetric {
  final String id;
  final String name;
  final String description;
  final int severityWeight;

  PsychologicalMetric({
    required this.id,
    required this.name,
    required this.description,
    required this.severityWeight,
  });

  factory PsychologicalMetric.fromJson(Map<String, dynamic> json) {
    return PsychologicalMetric(
      id: json['id'] as String,
      name: json['name'] as String,
      description: json['description'] as String,
      severityWeight: json['severityWeight'] as int,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      'description': description,
      'severityWeight': severityWeight,
    };
  }
}

class SelectedMetrics {
  static const int requiredMetricCount = 20;

  final List<PsychologicalMetric> metrics;

  SelectedMetrics({required this.metrics}) {
    if (metrics.isEmpty || metrics.length > requiredMetricCount) {
      throw ArgumentError(
        'Between 1 and $requiredMetricCount metrics must be selected for analysis.',
      );
    }
  }

  factory SelectedMetrics.fromJson(Map<String, dynamic> json) {
    return SelectedMetrics(
      metrics: ((json['metrics'] as List<dynamic>?) ?? [])
          .map(
            (value) =>
                PsychologicalMetric.fromJson(value as Map<String, dynamic>),
          )
          .toList(),
    );
  }

  Map<String, dynamic> toJson() {
    return {'metrics': metrics.map((metric) => metric.toJson()).toList()};
  }

  List<String> get names =>
      metrics.map((metric) => metric.name).toList(growable: false);
}

class PsychologicalAnalysisReport {
  final String executiveSummary;
  final Map<String, double> metricScores;
  final List<ContextualEvidenceExample> evidenceExamples;
  final String forensicVerdict;
  final String senderName;
  final String receiverName;
  final String partnerOneAnalysis;
  final String partnerTwoAnalysis;
  final String primaryProblemConclusion;

  PsychologicalAnalysisReport({
    required this.executiveSummary,
    required this.metricScores,
    required this.evidenceExamples,
    required this.forensicVerdict,
    required this.senderName,
    required this.receiverName,
    required this.partnerOneAnalysis,
    required this.partnerTwoAnalysis,
    required this.primaryProblemConclusion,
  });

  factory PsychologicalAnalysisReport.fromJson(Map<String, dynamic> json) {
    return PsychologicalAnalysisReport(
      executiveSummary: json['executiveSummary'] as String? ?? '',
      metricScores: ((json['metricScores'] as Map<String, dynamic>?) ?? {}).map(
        (key, value) => MapEntry(key, (value as num).toDouble()),
      ),
      evidenceExamples: _parseEvidenceExamples(
        json,
      ).map(ContextualEvidenceExample.fromJson).toList(),
      forensicVerdict: json['forensicVerdict'] as String? ?? '',
      senderName: json['senderName'] as String? ?? 'Sender',
      receiverName: json['receiverName'] as String? ?? 'Receiver',
      partnerOneAnalysis: json['partnerOneAnalysis'] as String? ?? '',
      partnerTwoAnalysis: json['partnerTwoAnalysis'] as String? ?? '',
      primaryProblemConclusion:
          json['primaryProblemConclusion'] as String? ?? '',
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'executiveSummary': executiveSummary,
      'metricScores': metricScores,
      'evidenceExamples': evidenceExamples
          .map((example) => example.toJson())
          .toList(),
      'forensicVerdict': forensicVerdict,
      'senderName': senderName,
      'receiverName': receiverName,
      'partnerOneAnalysis': partnerOneAnalysis,
      'partnerTwoAnalysis': partnerTwoAnalysis,
      'primaryProblemConclusion': primaryProblemConclusion,
    };
  }

  static List<Map<String, dynamic>> _parseEvidenceExamples(
    Map<String, dynamic> json,
  ) {
    final evidenceExamples = json['evidenceExamples'];
    if (evidenceExamples is List<dynamic>) {
      return evidenceExamples.whereType<Map<String, dynamic>>().toList(
        growable: false,
      );
    }

    final evidentiaryQuotes = json['evidentiaryQuotes'];
    if (evidentiaryQuotes is List<dynamic>) {
      return evidentiaryQuotes
          .map(
            (quote) => {
              'speaker': 'Unknown speaker',
              'behavior': 'Supporting evidence',
              'context': 'Context was not supplied by the AI.',
              'quote': quote.toString(),
            },
          )
          .toList(growable: false);
    }

    return const [];
  }
}

class ContextualEvidenceExample {
  final String speaker;
  final String behavior;
  final String context;
  final String quote;

  ContextualEvidenceExample({
    required this.speaker,
    required this.behavior,
    required this.context,
    required this.quote,
  });

  factory ContextualEvidenceExample.fromJson(Map<String, dynamic> json) {
    return ContextualEvidenceExample(
      speaker: json['speaker'] as String? ?? '',
      behavior: json['behavior'] as String? ?? '',
      context: json['context'] as String? ?? '',
      quote: json['quote'] as String? ?? '',
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'speaker': speaker,
      'behavior': behavior,
      'context': context,
      'quote': quote,
    };
  }
}
