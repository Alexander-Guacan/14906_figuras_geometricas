import 'package:figuras_geometricas/enums/shapes.dart';
import 'package:figuras_geometricas/models/game_test.dart';
import 'package:figuras_geometricas/models/results_test.dart';
import 'package:figuras_geometricas/widgets/image_button.dart';
import 'package:flutter/material.dart';

class TestPage extends StatelessWidget {
  const TestPage({super.key});

  @override
  Widget build(BuildContext context) {
    final GameTest gameSettings =
        ModalRoute.of(context)?.settings.arguments as GameTest;

    return Scaffold(
      appBar: AppBar(),
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/img/background/fondo5.jpg'),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          children: [
            const SizedBox(
              height: 40,
            ),
            Text(
              gameSettings.question,
              style: const TextStyle(
                fontSize: 50,
                fontFamily: "Lobster",
                color: Color.fromARGB(255, 58, 5, 87),
              ),
              textAlign: TextAlign.center,
            ),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: createOptions(
                  context,
                  gameSettings.images,
                  gameSettings.correctOption.index,
                  gameSettings.shape,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  List<Widget> createOptions(BuildContext context, List<String> images,
      int correctOption, Shapes shape) {
    List<Widget> options = List.empty(growable: true);

    showResultsPage(bool hasWon) {
      Navigator.pushNamed(
        context,
        "/results",
        arguments: ResultsTest(hasWon: hasWon, shape: shape),
      );
    }

    for (int i = 0; i <= 2; i += 2) {
      options.add(
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            ImageButton(
              text: "",
              onTap: () => showResultsPage(correctOption == i),
              imagePath: images[i],
              width: 132,
              height: 132,
              
            ),
            ImageButton(
              text: "",
              onTap: () => showResultsPage(correctOption == i + 1),
              imagePath: images[i + 1],
              width: 132,
              height: 132,
             
            ),
          ],
        ),
      );
    }

    return options;
  }
}
