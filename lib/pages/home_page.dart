import 'package:figuras_geometricas/enums/shapes.dart';
import 'package:figuras_geometricas/models/geometric_character.dart';
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
              image: AssetImage('assets/img/background/fondo7.jpg'),
              fit: BoxFit.cover),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Text(
              "FIGURAS GEOMÉTRICAS",
              style: TextStyle(
                fontSize: 65,
                fontFamily: "Anton",
                color: Color.fromARGB(255, 190, 26, 215),
              ),
              textAlign: TextAlign.center,
            ),
            Column(
              children: [
                SimpleButton(
                  text: "Jugar",
                  onPressed: () => Navigator.pushNamed(context, "/games_menu"),
                ),
                const SizedBox(
                  height: 30,
                ),
                SimpleButton(
                  text: "Aprender",
                  onPressed: () => Navigator.pushNamed(context, "/tutorials"),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Image.asset(
                  GeometricCharacter.imagePath(Shapes.circleHappy),
                  width: 90,
                  height: 90,
                ),
                Image.asset(
                  GeometricCharacter.imagePath(Shapes.squareHappy),
                  width: 90,
                  height: 90,
                ),
                Image.asset(
                  GeometricCharacter.imagePath(Shapes.triangleHappy),
                  width: 90,
                  height: 90,
                ),
                Image.asset(
                  GeometricCharacter.imagePath(Shapes.rectangleHappy),
                  width: 90,
                  height: 90,
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
