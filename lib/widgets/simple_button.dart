import 'package:flutter/material.dart';

class SimpleButton extends ElevatedButton {
  SimpleButton({
    super.key,
    required super.onPressed,
    required String text,
    double fontSize = 24.0,
    Color? backgroundColor,
    double verticalPadding = 20.0,
    double horizontalPadding = 48.0,
    double radius = 20.0
  }) : super(
          child: Text(
            text,
            style: TextStyle(fontSize: fontSize),
          ),
          style: ButtonStyle(
            backgroundColor: MaterialStatePropertyAll(backgroundColor),
            padding: MaterialStatePropertyAll<EdgeInsets?>(
              EdgeInsets.symmetric(vertical: verticalPadding, horizontal: horizontalPadding),
            ),
            shape: MaterialStatePropertyAll(
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(radius)),
            ),
          ),
        );
}
