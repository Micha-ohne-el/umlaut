import 'package:umlaut/i18n/languages.dart';
import 'package:umlaut/texts.dart';

class DiagramTexts extends GlobalTexts {
  DiagramTexts(super.lang);

  defaultDiagramName() {
    switch (lang) {
      case german: return "Unbenanntes Diagramm";
      case english: return "Untitled Diagram";
    }
  }

  diagramsCouldNotBeLoaded() {
    switch (lang) {
      case german: return "Deine Diagramme konnten nicht geladen werden, sorry! :(";
      case english: return "Your diagrams could not be loaded, I'm really sorry mate :(";
    }
  }
}
