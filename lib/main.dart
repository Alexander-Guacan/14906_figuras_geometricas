import 'package:figuras_geometricas/pages/home_page.dart';
import 'package:figuras_geometricas/pages/tutorial_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Figuras Geométricas',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
        useMaterial3: true,
      ),
      initialRoute: "/",
      routes: {
        "/tutorials": (context) => const TutorialPage(),
      },
      home: const HomePage(),
    );
  }
}
