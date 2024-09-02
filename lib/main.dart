import 'package:flutter/material.dart';
import 'package:weathercc/pages/csc_selector.dart';
import 'package:weathercc/pages/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      home:  const CSC(),

    onGenerateRoute: (settings) {
      if (settings.name == '/homepage') {
        final city = settings.arguments as String; // or any type you need
        return MaterialPageRoute(
          builder: (context) {
            return HomePage(city: city);
          },
        );
      }
      return null; // or a default route
    },

    
    );
  }
}