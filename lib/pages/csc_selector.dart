import 'package:csc_picker/csc_picker.dart';
import 'package:flutter/material.dart';

class CSC extends StatefulWidget {
  const CSC({super.key});

  @override
  State<CSC> createState() => _CSCState();
}

class _CSCState extends State<CSC> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Location"),
        ),
        body: CSCPicker(),
      ),
    );
  }
}