import 'package:flutter/material.dart';
import 'package:notes/views/edit_note_view.dart';

class NoteCard extends StatelessWidget {
  const NoteCard({super.key, required this.color});
  final Color color;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, EditNoteView.id);
      },
      child: Container(
        width: 300,
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(12),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            ListTile(
              title: Text("Flutter Tips"),
              textColor: Colors.black,
              trailing: IconButton(
                onPressed: () {},
                icon: Icon(Icons.delete, size: 30),
              ),
              iconColor: Colors.black,
            ),
            Padding(
              padding: const EdgeInsets.all(16),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Build your career with el amour",
                  style: TextStyle(
                    color: const Color.fromARGB(255, 97, 95, 95),
                  ),
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
      ),
    );
  }
}
