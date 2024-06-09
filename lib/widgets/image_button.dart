import 'package:flutter/material.dart';

class ImageButton extends StatelessWidget {
  final String _text;
  final TextStyle _style;
  final Function()? _onTap;
  final String _imagePath;
  final double? _width;
  final double? _height;

  const ImageButton({
    super.key,
    required String text,
    TextStyle style = const TextStyle(),
    required Function()? onTap,
    required String imagePath,
    required double width,
    double? height,
  })  : _text = text,
        _style = style,
        _onTap = onTap,
        _imagePath = imagePath,
        _width = width,
        _height = height ?? width;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          _text,
          style: _style,
        ),
        GestureDetector(
          onTap: _onTap,
          child: Image.asset(
            _imagePath,
            width: _width,
            height: _height,
          ),
        ),
      ],
    );
  }
}
