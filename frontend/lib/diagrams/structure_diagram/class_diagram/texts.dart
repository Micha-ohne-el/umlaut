import 'package:umlaut/i18n/languages.dart';
import 'package:umlaut/i18n/texts.dart';

class ClassDiagramTexts extends Texts {
  ClassDiagramTexts(super.context);

  String stereotype() {
    switch (lang) {
      case german: return "Stereotyp";
      case english:
      default:
        return "stereotype";
    }
  }

  String interface() {
    switch (lang) {
      case german: return "Schnittstelle";
      case english:
      default:
        return "interface";
    }
  }
}
