import 'package:flutter/material.dart';

class NoteCard extends StatelessWidget {
  const NoteCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 180,
      width: 300,
      decoration: BoxDecoration(
        color: Colors.amber,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          ListTile(
            title: Text("Flutter Tips"),
            textColor: Colors.black,
            trailing: IconButton(onPressed: () {}, icon: Icon(Icons.delete)),
            iconColor: Colors.black,
          ),
          Padding(
            padding: const EdgeInsets.all(16),
            child: Align(
              alignment: Alignment.centerLeft,
              child: Text(
                "Build your career with el amour",
                style: TextStyle(color: const Color.fromARGB(255, 97, 95, 95)),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16),
            child: Align(
              alignment: Alignment.bottomRight,
              child: Text("9/3/2025", style: TextStyle(color: Colors.black)),
            ),
          ),
        ],
      ),
    );
  }
}
