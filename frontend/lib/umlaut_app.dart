import 'package:flutter/material.dart';
import 'package:umlaut/color_scheme.dart';

class UmlautApp extends StatelessWidget {
  const UmlautApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        colorScheme: lightScheme,
        useMaterial3: true,
      ),
      darkTheme: ThemeData(
        colorScheme: darkScheme,
        useMaterial3: true,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Umlaut"),
        ),
        body: const Center(
          child: Text("Hello World"),
        ),
      ),
    );
  }
}
