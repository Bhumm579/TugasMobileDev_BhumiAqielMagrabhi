import 'package:flutter/material.dart';

class CustomTextButton extends StatelessWidget {
  final String text;
  final CustomTextButtonStyle style;

  const CustomTextButton({
    super.key,
    required this.text,
    required this.style, required Null Function() onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return TextButton(
      style: ButtonStyle(
        overlayColor: WidgetStateProperty.all(style.overlayColor),
      ),
      onPressed: () {

      },
      child: Text(
        text,
        style: TextStyle(
          fontSize: style.fontSize,
          fontWeight: style.textWeight,
          color: style.textColor,
        ),
      ),
    );
  }
}

class CustomTextButtonStyle {
  final Color textColor;
  final double fontSize;
  final FontWeight textWeight;
  final Color overlayColor;

  const CustomTextButtonStyle({
    this.textColor = Colors.white,
    this.fontSize = 16.0,
    this.textWeight = FontWeight.bold,
    this.overlayColor = Colors.transparent,
  });
}