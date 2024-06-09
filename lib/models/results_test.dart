import 'package:figuras_geometricas/enums/shapes.dart';
import 'package:figuras_geometricas/models/geometric_character.dart';

class ResultsTest {
  final bool hasWon;
  static final String winnerImagePath = GeometricCharacter.imagePath(Shapes.circleHappy);
  static final String loserImagePath = GeometricCharacter.imagePath(Shapes.triangle);

  ResultsTest({required this.hasWon});
}
