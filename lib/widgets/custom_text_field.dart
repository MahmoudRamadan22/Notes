import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    super.key,
    required this.hintText,
    required this.label,
    required this.onSubmitted,
    required this.contentPadding,
  });
  final String label;
  final String hintText;
  final ValueChanged<String>? onSubmitted;
  final EdgeInsetsGeometry? contentPadding;
  @override
  Widget build(BuildContext context) {
    return TextField(
      onSubmitted: onSubmitted,
      decoration: InputDecoration(
        contentPadding: contentPadding,
        hintText: hintText,
        label: Text(label),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(width: 1.5, color: Colors.grey),
          borderRadius: BorderRadius.circular(10),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(width: 1.5, color: Colors.grey),
          borderRadius: BorderRadius.circular(10),
        ),
      ),
    );
  }
}
