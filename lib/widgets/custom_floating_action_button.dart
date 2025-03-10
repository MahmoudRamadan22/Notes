import 'package:flutter/material.dart';

class CustomFloatingActionButton extends StatelessWidget {
  const CustomFloatingActionButton({super.key});

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      backgroundColor: Colors.blueAccent,
      onPressed: () {},
      child: Icon(Icons.add),
    );
  }
}
