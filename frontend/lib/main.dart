import 'package:flutter/material.dart';
import 'package:umlaut/i18n/language_provider.dart';
import 'package:umlaut/i18n/languages.dart';
import 'package:umlaut/umlaut_app.dart';

void main() {
  runApp(const GlobalAppWrapper());
}

class GlobalAppWrapper extends StatelessWidget {
  const GlobalAppWrapper({super.key});

  @override
  Widget build(BuildContext context) {
    return const LanguageProvider(
      language: english,
      child: UmlautApp(),
    );
  }
}
