import 'package:csc_picker/csc_picker.dart';
import 'package:flutter/material.dart';

class CSC extends StatefulWidget {
  const CSC({super.key});

  @override
  State<CSC> createState() => _CSCState();
}

class _CSCState extends State<CSC> {
  String countryValue = "";
  String? stateValue = "";
  String? cityValue = "";
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Location"),
        ),
        body: Column( children: [CSCPicker(
          onCountryChanged: (value) {
            setState(() {
              countryValue = value;
            });
          },
          onStateChanged: (value) {
            setState(() {
              stateValue = value;
            });
          },
          onCityChanged: (value) {
            setState(() {
              cityValue = value;
            });
          },
        ),
        IconButton(onPressed: (){
          Navigator.pushNamed(context, '/homepage', arguments: cityValue);
        }, icon: const Icon(Icons.done))
        ] 
        ),
      ),
    );
  }
}
