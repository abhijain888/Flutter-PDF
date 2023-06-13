import 'package:flutter/material.dart';
import 'package:pdf_flutter/build_pdf.dart';
import 'package:printing/printing.dart';

class PdfPreviewScreen extends StatelessWidget {
  final String text;
  const PdfPreviewScreen({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("PDF Preview"),
      ),
      body: PdfPreview(
        build: (format) => buildPdf(text),
      ),
    );
  }
}
