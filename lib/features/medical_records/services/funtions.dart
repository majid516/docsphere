
import 'dart:convert';
import 'dart:io';

import 'package:open_file/open_file.dart';
import 'package:path_provider/path_provider.dart';

Future<void> openPdfFromBase64(String base64String) async {
  try {
    final decodedBytes = base64Decode(base64String);
    final tempDir = await getTemporaryDirectory();
    final tempFilePath = '${tempDir.path}/temp_file.pdf';
    final file = File(tempFilePath);
    await file.writeAsBytes(decodedBytes);
    final openResult = await OpenFile.open(tempFilePath);
    if (openResult.type != ResultType.done) {
      print("Failed to open PDF file: ${openResult.message}");
    }
  } catch (e) {
    print("Error opening PDF from base64: $e");
  }
}
