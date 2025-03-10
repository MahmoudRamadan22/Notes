import 'package:flutter/material.dart';

class CustomElevatedButton extends StatelessWidget {
  const CustomElevatedButton({super.key});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {},
      style: ElevatedButton.styleFrom(
        minimumSize: Size(300, 50),
        backgroundColor: Colors.blueAccent,
      ),
      child: Text("Add", style: TextStyle(color: Colors.black)),
    );
  }
}
