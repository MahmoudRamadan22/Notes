import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 15, right: 15, left: 15),
      child: Row(
        children: [
          Text("Notes", style: TextStyle(fontSize: 26)),
          Spacer(),
          IconButton(onPressed: () {}, icon: Icon(Icons.search, size: 30)),
        ],
      ),
    );
  }
}
