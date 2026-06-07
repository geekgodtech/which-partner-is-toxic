import 'dart:io';
// We give these imports strict nicknames so the app CANNOT get confused
import 'package:file_picker/file_picker.dart' as fp;
import 'package:csv/csv.dart' as csv_lib;
import 'package:airta/models.dart';

class DataParserService {
  static Future<ConversationThread?> pickAndParseFile() async {
    // We use the 'fp' nickname here to force it to use the official package
    fp.FilePickerResult? result = await fp.FilePicker.platform.pickFiles(
      type: fp.FileType.custom, // Also updated this to use the nickname!
      allowedExtensions: ['csv', 'txt'],
    );

    if (result == null || result.files.single.path == null) {
      return null;
    }

    String filePath = result.files.single.path!;
    String fileName = result.files.single.name;
    File file = File(filePath);
    String fileContents = await file.readAsString();

    List<ChatMessage> extractedMessages = [];

    if (fileName.endsWith('.csv')) {
      // We use the 'csv_lib' nickname here to force it to find the real class
      List<List<dynamic>> rows =
          const csv_lib.CsvToListConverter().convert(fileContents);

      for (int i = 1; i < rows.length; i++) {
        var row = rows[i];
        if (row.length >= 3) {
          extractedMessages.add(ChatMessage(
            timestamp: DateTime.now(),
            senderName: row[1].toString(),
            textContent: row[2].toString(),
          ));
        }
      }
    } else {
      List<String> lines = fileContents.split('\n');
      for (String line in lines) {
        if (line.trim().isNotEmpty) {
          extractedMessages.add(ChatMessage(
            timestamp: DateTime.now(),
            senderName: "Unknown",
            textContent: line,
          ));
        }
      }
    }

    return ConversationThread(
      messages: extractedMessages,
      fileSource: fileName,
    );
  }
}
