import 'package:flutter/material.dart';
//import 'package:helloworld_app_210659/presentation/screens/counter_screen.dart';
import 'package:helloworld_app_210659/presentation/screens/counter_functions_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorSchemeSeed: Colors.green,
        fontFamily: 'Merriweather',
      ),
      home: const CounterFunctionsScreen()
    );
  }
}