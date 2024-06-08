import 'package:figuras_geometricas/enums/shapes.dart';
import 'package:figuras_geometricas/widgets/geometric_character.dart';
import 'package:figuras_geometricas/widgets/custom_video_player.dart';
import 'package:flutter/material.dart';

class TutorialPage extends StatefulWidget {
  const TutorialPage({super.key});

  @override
  State<TutorialPage> createState() => _TutorialPageState();
}

class _TutorialPageState extends State<TutorialPage> {
  String _video = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Text(
            "Tutoriales",
            style: TextStyle(fontSize: 40),
          ),
          Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Column(
                    children: [
                      const Text("¿Cuadrado?"),
                      GestureDetector(
                        onTap: () => setState(() {
                          _video = selectVideo(Shapes.square);
                        }),
                        child: GeometricCharacter(
                          character: Shapes.square,
                          width: 132,
                        ),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      const Text("¿Circulo?"),
                      GestureDetector(
                        onTap: () => setState(() {
                          _video = selectVideo(Shapes.circle);
                        }),
                        child: GeometricCharacter(
                          character: Shapes.circle,
                          width: 132,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              const SizedBox(height: 32),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Column(
                    children: [
                      const Text("¿Triángulo?"),
                      GestureDetector(
                        onTap: () => setState(() {
                          _video = selectVideo(Shapes.triangle);
                        }),
                        child: GeometricCharacter(
                          character: Shapes.triangle,
                          width: 132,
                        ),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      const Text("¿Rectángulo?"),
                      GestureDetector(
                        onTap: () => setState(() {
                          _video = selectVideo(Shapes.rectangle);
                        }),
                        child: GeometricCharacter(
                          character: Shapes.rectangle,
                          width: 132,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
          Visibility(
            visible: _video.isNotEmpty,
            child: CustomVideoPlayer(
              video: _video,
            ),
          ),
        ],
      ),
    );
  }

  String selectVideo(Shapes shapeSelected) {
    String videoName = "";

    switch (shapeSelected) {
      case Shapes.circle:
        videoName = "circle-tutorial.mp4";
        break;

      case Shapes.rectangle:
        videoName = "rectangle-tutorial.mp4";
        break;

      case Shapes.triangle:
        videoName = "triangle-tutorial.mp4";
        break;

      case Shapes.square:
        videoName = "square-tutorial.mp4";
        break;

      default:
        break;
    }

    return "assets/video/tutorials/$videoName";
  }
}
