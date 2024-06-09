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
      body: Container(
        width: double.infinity,
        decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assets/img/fondo7.jpg'), fit: BoxFit.cover),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Text(
              "FIGURAS GEOMÉTRICAS",
              style: TextStyle(
                  fontSize: 60,
                  fontFamily: "Anton",
                  color: Color.fromARGB(255, 190, 26, 215)),
              textAlign: TextAlign.center,
            ),
            Column(
              children: [
                SimpleButton(text: "Jugar", onPressed: () {}),
                const SizedBox(
                  height: 30,
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
                  character: Shapes.square1,
                ),
                GeometricCharacter(
                  character: Shapes.rectangle1,
                ),
                GeometricCharacter(
                  character: Shapes.triangle1,
                ),
                GeometricCharacter(
                  character: Shapes.Circle1,
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
