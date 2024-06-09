import '../enums/options.dart';

class GameTest {
  final String question;
  final Options correctOption;
  final List<String> images;

  GameTest({
    required this.question,
    required this.correctOption,
    required this.images,
  });
}
