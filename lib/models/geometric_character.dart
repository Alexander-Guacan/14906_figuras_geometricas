import 'package:figuras_geometricas/enums/shapes.dart';

class GeometricCharacter {
  static String imagePath(Shapes shape) {
    const String imgPath = "assets/img/characters/";

    switch (shape) {
      case Shapes.circle:
        return "${imgPath}circle.png";

      case Shapes.triangle:
        return "${imgPath}triangle.png";

      case Shapes.square:
        return "${imgPath}square.png";

      case Shapes.rectangle:
        return "${imgPath}rectangle.png";

      case Shapes.circleHappy:
        return "${imgPath}circle-happy.png";

      case Shapes.triangleHappy:
        return "${imgPath}triangle-happy.png";

      case Shapes.squareHappy:
        return "${imgPath}square-happy.png";

      case Shapes.rectangleHappy:
        return "${imgPath}rectangle-happy.png";

      case Shapes.loseCircle:
        return "${imgPath}lose_circle.png";

      case Shapes.loseTriangle:
        return "${imgPath}lose_triangle.png";
      
      case Shapes.loseSquare:
        return "${imgPath}lose_square.png";

      case Shapes.winRectangle:
        return "${imgPath}win_rectangle.png";
      default:
        return "";
    }
  }
}
