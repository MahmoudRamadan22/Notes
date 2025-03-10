import 'package:flutter/material.dart';
import 'package:notes/widgets/note_card.dart';

class NotesListView extends StatelessWidget {
  const NotesListView({super.key});
  final List<Color> colors = const [Color.fromARGB(255, 204, 185, 117)];
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder:
          (context, index) => Padding(
            padding: const EdgeInsets.all(8.0),
            child: NoteCard(color: colors[0]),
          ),
      itemCount: 6,
    );
  }
}
