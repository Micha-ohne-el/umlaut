import 'package:flutter/material.dart';
import 'package:umlaut/i18n/texts.dart';

class TextProvider<T extends Texts> extends InheritedWidget {
  const TextProvider({
    super.key,
    required super.child,
    required this.texts,
  });

  final T texts;

  static TextProvider<T> of<T extends Texts>(BuildContext context) {
    final textProvider = context.dependOnInheritedWidgetOfExactType<TextProvider<T>>();
    assert(textProvider != null, "No TextProvider<$T> found in context");
    return textProvider!;
  }

  @override
  bool updateShouldNotify(InheritedWidget oldWidget) => true;
}
