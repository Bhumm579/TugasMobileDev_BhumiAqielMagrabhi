import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final String text;
  final CustomButtonStyle style;

  const CustomButton({
    super.key,
    required this.text,
    required this.style, required Null Function() onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: style.buttonColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(style.borderRadius),
        ),
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

class CustomButtonStyle {
  final Color buttonColor;
  final Color textColor;
  final double borderRadius;
  final FontWeight textWeight;
  final double fontSize;

  const CustomButtonStyle({
    this.buttonColor = Colors.blue,
    this.textColor = Colors.white,
    this.textWeight = FontWeight.bold,
    this.borderRadius = 32.0,
    this.fontSize = 16.0,
  });
}