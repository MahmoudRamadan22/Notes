import 'package:flutter/material.dart';

class CustomElevatedButton extends StatelessWidget {
  const CustomElevatedButton({super.key, required this.onPressed});
  final VoidCallback? onPressed;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        minimumSize: Size(300, 50),
        backgroundColor: Colors.blueAccent,
      ),
      child: Text("Add", style: TextStyle(color: Colors.black)),
    );
  }
}
