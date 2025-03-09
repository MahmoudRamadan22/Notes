import 'package:flutter/material.dart';
import 'package:notes/widgets/custom_app_bar.dart';
import 'package:notes/widgets/note_card.dart';

class NotesViewBody extends StatelessWidget {
  const NotesViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomAppBar(),
        SizedBox(height: 20),
        Expanded(
          child: ListView.builder(
            itemBuilder:
                (context, index) => Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: NoteCard(),
                ),
            itemCount: 6,
          ),
        ),
      ],
    );
  }
}
