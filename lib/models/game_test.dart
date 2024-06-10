import 'package:figuras_geometricas/enums/shapes.dart';
import '../enums/options.dart';

class GameTest {
  final String question;
  final Options correctOption;
  final List<String> images;
  final Shapes shape;

  GameTest({
    required this.question,
    required this.correctOption,
    required this.images,
    required this.shape,
  });
}
