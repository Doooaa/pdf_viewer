import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';
// ignore_for_file: public_member_api_docs, sort_constructors_first

class MatrialScreen extends StatelessWidget {
  String? pdf;
   MatrialScreen({
    Key? key,
    this.pdf,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(actions: [],title: Text("my app"),),
      body: SingleChildScrollView(
        child: Column(
          children: [
              Container(
                height: MediaQuery.sizeOf(context).height,
                width: MediaQuery.sizeOf(context).width,
                child: SfPdfViewer.asset(pdf!)),
          ],
        ),
      ),
    );
  }
}
