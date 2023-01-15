import 'package:flutter/material.dart';
import 'package:umlaut/diagrams/overview/diagram_list.dart';
import 'package:umlaut/i18n/texts.dart';
import 'package:umlaut/texts.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var texts = Texts.of<GlobalTexts>(context);

    return Scaffold(
      appBar: AppBar(
        title: Text(texts.appName()),
      ),
      body: const DiagramList(),
    );
  }
}
