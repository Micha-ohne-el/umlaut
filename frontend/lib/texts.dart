import 'package:umlaut/i18n/languages.dart';
import 'package:umlaut/i18n/texts.dart';

class GlobalTexts extends Texts {
  GlobalTexts(super.context);

  String appName() {
    switch (lang) {
      case german: return "Ümlaut";
      case english:
      default:
        return "Umlaut";
    }
  }

  String ok() {
    switch (lang) {
      default: return "OK";
    }
  }
}
