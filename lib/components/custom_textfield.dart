import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  final TextEditingController txtController;
  final CustomTextFieldStyle style;
  final CustomTextFieldBorder border;
  final String? hintText;

  const CustomTextField({
    super.key,
    required this.txtController,
    required this.style,
    required this.border,
    this.hintText,
  });

  OutlineInputBorder _buildBorder(Color color, double width) {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(border.borderRadius),
      borderSide: BorderSide(color: color, width: width),
    );
  }

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: txtController,
      style: TextStyle(
        color: style.inputTextColor,
      ),
      decoration: InputDecoration(
        hintText: hintText,
        hintStyle: TextStyle(
          fontWeight: style.hintWeight,
        ),
        enabledBorder: _buildBorder(border.enabledBorderColor, 1.0),
        focusedBorder: _buildBorder(border.focusedBorderColor, 1.5),
      ),
    );
  }
}

class CustomTextFieldStyle {
  final Color inputTextColor;
  final FontWeight hintWeight;

  const CustomTextFieldStyle({
    this.inputTextColor = Colors.white,
    this.hintWeight = FontWeight.bold,
  });
}

class CustomTextFieldBorder {
  final Color enabledBorderColor;
  final Color focusedBorderColor;
  final double borderRadius;

  const CustomTextFieldBorder({
    this.enabledBorderColor = Colors.grey,
    this.focusedBorderColor = Colors.white,
    this.borderRadius = 15.0,
  });
}