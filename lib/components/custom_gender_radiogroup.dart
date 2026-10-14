import 'package:flutter/material.dart';

class CustomRadioGroup<T> extends StatelessWidget {
  final T? groupValue;
  final ValueChanged<T?> onChanged;
  final Map<T, String> options;

  const CustomRadioGroup({
    super.key,
    required this.groupValue,
    required this.onChanged,
    required this.options,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: options.entries.map((entry) {
        return RadioListTile<T>(
          title: Text(entry.value, style: TextStyle(color: Colors.white)),
          value: entry.key,
          groupValue: groupValue,
          onChanged: onChanged,
        );
      }).toList(),
    );
  }
}
