import 'package:figuras_geometricas/models/results_test.dart';
import 'package:figuras_geometricas/widgets/simple_button.dart';
import 'package:flutter/material.dart';

class ResultsPage extends StatelessWidget {
  const ResultsPage({super.key});

  @override
  Widget build(BuildContext context) {
    final ResultsTest result =
        ModalRoute.of(context)?.settings.arguments as ResultsTest;
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Text(
            result.hasWon
                ? "Bien hecho, sigue asi"
                : "Que mal, sigue intentando",
            textAlign: TextAlign.center,
            style: const TextStyle(fontSize: 40),
          ),
          Center(
            child: Image.asset(
              result.hasWon
                  ? ResultsTest.winnerImagePath
                  : ResultsTest.loserImagePath,
            ),
          ),
          SimpleButton(
            onPressed: () {
              Navigator.popUntil(context, ModalRoute.withName("/games_menu"));
            },
            text: result.hasWon ? "Regresar" : "Reintentar",
          ),
        ],
      ),
    );
  }
}
