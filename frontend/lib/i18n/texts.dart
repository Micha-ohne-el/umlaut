import 'package:flutter/material.dart';
import 'package:umlaut/i18n/language_provider.dart';
import 'package:umlaut/i18n/text_provider.dart';

class Texts {
  Texts(this.context);

  final BuildContext context;

  get lang => LanguageProvider.of(context).language;

  static T of<T extends Texts>(BuildContext context) => TextProvider.of<T>(context).texts;
}
