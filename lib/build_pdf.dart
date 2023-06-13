import 'package:flutter/services.dart';
import 'package:pdf/pdf.dart';
import 'package:pdf/widgets.dart';

Future<Uint8List> buildPdf(String text) async {
  final pdf = Document();

  pdf.addPage(
    Page(
      pageFormat: PdfPageFormat.a4,
      build: (context) {
        return Center(
          child: Text(text, style: const TextStyle(color: PdfColors.black)),
        );
      },
    ),
  );

  return pdf.save();
}
