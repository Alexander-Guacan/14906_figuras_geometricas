import 'package:figuras_geometricas/enums/shapes.dart';
import 'package:figuras_geometricas/widgets/geometric_character.dart';
import 'package:figuras_geometricas/widgets/simple_button.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: SizedBox(
          width: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                "Figuras geométriCas".toUpperCase(),
                style: const TextStyle(fontSize: 40),
                textAlign: TextAlign.center,
              ),
              Column(
                children: [
                  SimpleButton(text: "Jugar", onPressed: () {}),
                  const SizedBox(
                    height: 24,
                  ),
                  SimpleButton(
                    text: "Tutorial",
                    onPressed: () => Navigator.pushNamed(context, "/tutorials"),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  GeometricCharacter(
                    character: Shapes.square,
                  ),
                  GeometricCharacter(
                    character: Shapes.rectangle,
                  ),
                  GeometricCharacter(
                    character: Shapes.circle,
                  ),
                  GeometricCharacter(
                    character: Shapes.triangle,
                  ),
                ],
              )
            ],
          ),
        ));
  }
}
