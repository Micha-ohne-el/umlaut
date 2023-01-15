import 'package:umlaut/diagrams/diagram.dart';

class DiagramRepo {
  Future<List<Diagram>> fetchDiagrams() async {
    return const [
      Diagram(title: "Test Diagram"),
    ];
  }
}
