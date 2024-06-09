import 'package:figuras_geometricas/enums/options.dart';
import 'package:figuras_geometricas/enums/shapes.dart';
import 'package:figuras_geometricas/models/game_test.dart';
import 'package:figuras_geometricas/models/geometric_character.dart';
import 'package:figuras_geometricas/widgets/image_button.dart';
import 'package:flutter/material.dart';

class GamesMenuPage extends StatelessWidget {
  const GamesMenuPage({super.key});

  @override
  Widget build(BuildContext context) {
    const String imageFolder = "assets/img/games";

    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          const Text(
            "Pon a prueba tus conocimientos",
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 40,
              fontFamily: "Anton",
              color: Color.fromARGB(255, 190, 26, 215),
            ),
          ),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    ImageButton(
                      text: "Cuadrado",
                      onTap: () {
                        Navigator.pushNamed(
                          context,
                          "/test",
                          arguments: GameTest(
                            question: "¿Cuál de estos es un cuadrado?",
                            correctOption: Options.c,
                            images: const [
                              "$imageFolder/square/circle.png",
                              "$imageFolder/square/pentagon.png",
                              "$imageFolder/square/square.png",
                              "$imageFolder/square/rectangle.png",
                            ],
                          ),
                        );
                      },
                      imagePath: GeometricCharacter.imagePath(Shapes.square),
                      width: 132,
                      height: 132,
                      style: const TextStyle(
                        fontSize: 24,
                        fontFamily: "MooLahLah",
                        color: Color.fromRGBO(73, 200, 245, 1),
                      ),
                    ),
                    ImageButton(
                      text: "Circulo",
                      onTap: () {
                        Navigator.pushNamed(
                          context,
                          "/test",
                          arguments: GameTest(
                            question: "¿Cuál de estos es un circulo?",
                            correctOption: Options.a,
                            images: const [
                              "$imageFolder/circle/circle.png",
                              "$imageFolder/circle/pentagon.png",
                              "$imageFolder/circle/square.png",
                              "$imageFolder/circle/triangle.png",
                            ],
                          ),
                        );
                      },
                      imagePath: GeometricCharacter.imagePath(Shapes.circle),
                      width: 132,
                      height: 132,
                      style: const TextStyle(
                        fontSize: 24,
                        fontFamily: "MooLahLah",
                        color: Color.fromRGBO(25, 178, 114, 1),
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    ImageButton(
                      text: "Triángulo",
                      onTap: () {
                        Navigator.pushNamed(
                          context,
                          "/test",
                          arguments: GameTest(
                            question: "¿Cuál de estos es un triángulo?",
                            correctOption: Options.d,
                            images: const [
                              "$imageFolder/triangle/circle.png",
                              "$imageFolder/triangle/pentagon.png",
                              "$imageFolder/triangle/rectangle.png",
                              "$imageFolder/triangle/triangle.png",
                            ],
                          ),
                        );
                      },
                      imagePath: GeometricCharacter.imagePath(Shapes.triangle),
                      width: 132,
                      height: 132,
                      style: const TextStyle(
                        fontSize: 24,
                        fontFamily: "MooLahLah",
                        color: Color.fromRGBO(240, 62, 36, 1),
                      ),
                    ),
                    ImageButton(
                      text: "Rectángulo",
                      onTap: () {
                        Navigator.pushNamed(
                          context,
                          "/test",
                          arguments: GameTest(
                            question: "¿Cuál de estos es un rectángulo?",
                            correctOption: Options.b,
                            images: const [
                              "$imageFolder/rectangle/circle.png",
                              "$imageFolder/rectangle/rectangle.png",
                              "$imageFolder/rectangle/square.png",
                              "$imageFolder/rectangle/triangle.png",
                            ],
                          ),
                        );
                      },
                      imagePath: GeometricCharacter.imagePath(Shapes.rectangle),
                      width: 132,
                      height: 132,
                      style: const TextStyle(
                        fontSize: 24,
                        fontFamily: "MooLahLah",
                        color: Color.fromRGBO(251, 221, 3, 1),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
