import 'package:figuras_geometricas/enums/shapes.dart';
import 'package:figuras_geometricas/models/geometric_character.dart';
import 'package:figuras_geometricas/widgets/custom_video_player.dart';
import 'package:figuras_geometricas/widgets/image_button.dart';
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
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/img/background/fondo3.jpg'),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const SizedBox(height: 10), // Add this line (1/2)
            const Text(
              "Tutoriales",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 70,
                fontFamily: "LuckiestGuy",
                color: Color.fromARGB(255, 16, 79, 228),
              ),
            ),
            Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    ImageButton(
                      text: "¿Cuadrado",
                      onTap: () => setState(() {
                        _video = selectVideo(Shapes.square);
                      }),
                      imagePath: GeometricCharacter.imagePath(Shapes.square),
                      width: 128,
                      
                      style: const TextStyle(
                        fontSize: 33,
                        fontFamily: "MooLahLah",
                        color: Color.fromRGBO(42, 189, 243, 1),
                      ),
                    ),
                    ImageButton(
                      text: "¿Circulo?",
                      onTap: () => setState(() {
                        _video = selectVideo(Shapes.circle);
                      }),
                      imagePath: GeometricCharacter.imagePath(Shapes.circle),
                      width: 128,
                      
                      style: const TextStyle(
                        fontSize: 33,
                        fontFamily: "MooLahLah",
                        color: Color.fromRGBO(25, 178, 114, 1),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    ImageButton(
                      text: "¿Triángulo?",
                      onTap: () => setState(() {
                        _video = selectVideo(Shapes.triangle);
                      }),
                      imagePath: GeometricCharacter.imagePath(Shapes.triangle),
                      width: 128,
                     
                      style: const TextStyle(
                        fontSize: 33,
                        fontFamily: "MooLahLah",
                        color: Color.fromRGBO(240, 62, 36, 1),
                      ),
                    ),
                    ImageButton(
                      text: "¿Rectángulo?",
                      onTap: () => setState(() {
                        _video = selectVideo(Shapes.rectangle);
                      }),
                      imagePath: GeometricCharacter.imagePath(Shapes.rectangle),
                      width: 128,
                     
                      style: const TextStyle(
                        fontSize: 33,
                        fontFamily: "MooLahLah",
                        color: Color.fromRGBO(251, 221, 3, 1),
                      ),
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
