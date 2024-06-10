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
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/img/background/fondo8.jpeg'),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text(
              result.hasWon
                  ? "Bien hecho, sigue asi"
                  : "Que mal, sigue intentando",
              style: TextStyle(
                fontSize: 38,
                fontFamily: "Gorditas",
                color: result.hasWon
                    ? const Color.fromARGB(255, 20, 177, 12)
                    : const Color.fromARGB(255, 227, 8, 8),
              ),
              textAlign: TextAlign.center,
            ),
            Center(
              child: Image.asset(
                result.imagePath,
                width: 200,
                height: 200,
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
      ),
    );
  }
}
