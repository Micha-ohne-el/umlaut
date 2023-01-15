import 'package:flutter/material.dart';
import 'package:umlaut/i18n/language.dart';

class LanguageProvider extends InheritedWidget {
  const LanguageProvider({
    super.key,
    required super.child,
    required this.language,
  });

  final Language language;

  static LanguageProvider of(BuildContext context) {
    final LanguageProvider? languageProvider = context.dependOnInheritedWidgetOfExactType<LanguageProvider>();
    assert(languageProvider != null, "No LanguageProvider found in context");
    return languageProvider!;
  }

  @override
  bool updateShouldNotify(LanguageProvider oldWidget) => true;
}
