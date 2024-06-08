import 'package:figuras_geometricas/enums/shapes.dart';
import 'package:flutter/material.dart';

class GeometricCharacter extends StatelessWidget {
  late final String _shapePath;
  final double? _width;
  final double? _height;

  GeometricCharacter(
      {super.key, required Shapes character, double? width, double? height})
      : _width = width ?? 80.0, _height = height ?? width {
    const String imgPath = "assets/img/characters/";

    switch (character) {
      case Shapes.circle:
        _shapePath = "${imgPath}circle-character.png";
        break;

      case Shapes.triangle:
        _shapePath = "${imgPath}triangle-character.png";
        break;

      case Shapes.square:
        _shapePath = "${imgPath}square-character.png";
        break;

      case Shapes.rectangle:
        _shapePath = "${imgPath}rectangle-character.png";
        break;

      default:
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      _shapePath,
      width: _width,
      height: _height,
    );
  }
}
