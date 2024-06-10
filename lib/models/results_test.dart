import 'package:figuras_geometricas/enums/shapes.dart';
import 'package:figuras_geometricas/models/geometric_character.dart';

class ResultsTest {
  final bool hasWon;
  final Shapes shape;

  ResultsTest({required this.hasWon, required this.shape});

  String get imagePath {
    switch (shape) {
      case Shapes.circle:
        return hasWon
            ? GeometricCharacter.imagePath(Shapes.circleHappy)
            : GeometricCharacter.imagePath(Shapes.loseCircle);
      case Shapes.triangle:
        return hasWon
            ? GeometricCharacter.imagePath(Shapes.triangleHappy)
            : GeometricCharacter.imagePath(Shapes.loseTriangle);
      case Shapes.square:
        return hasWon
            ? GeometricCharacter.imagePath(Shapes.squareHappy)
            : GeometricCharacter.imagePath(Shapes.loseSquare);
      case Shapes.rectangle:
        return hasWon
            ? GeometricCharacter.imagePath(Shapes.winRectangle)
            : GeometricCharacter.imagePath(Shapes.rectangleHappy);
      default:
        return "";
    }
  }
}
