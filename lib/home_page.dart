import 'package:flutter/material.dart';
import 'package:pdf_flutter/pdf_preview.dart';

class MyHomePage extends StatelessWidget {
  MyHomePage({super.key});

  final TextEditingController _controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("PDF Flutter"),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: TextField(
            controller: _controller,
            decoration: const InputDecoration(
              hintText: "Write here something to save in pdf",
            ),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (_) => PdfPreviewScreen(text: _controller.text),
            ),
          );
        },
        child: const Icon(Icons.picture_as_pdf),
      ),
    );
  }
}
