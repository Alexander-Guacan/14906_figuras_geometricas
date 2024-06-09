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
      body: Column(
        children: [
          Text(
            gameSettings.question,
            style: const TextStyle(
              fontSize: 38,
              fontFamily: "Anton",
              color: Color.fromARGB(255, 190, 26, 215),
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
              ),
            ),
          )
        ],
      ),
    );
  }

  List<Widget> createOptions(
      BuildContext context, List<String> images, int correctOption) {
    List<Widget> options = List.empty(growable: true);

    showResultsPage(bool hasWon) {
      Navigator.pushNamed(
        context,
        "/results",
        arguments: ResultsTest(hasWon: hasWon),
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
                height: 132),
            ImageButton(
                text: "",
                onTap: () => showResultsPage(correctOption == i + 1),
                imagePath: images[i + 1],
                width: 132,
                height: 132),
          ],
        ),
      );
    }

    return options;
  }
}
