import 'package:flutter/material.dart';
import 'package:notes/widgets/custom_app_bar.dart';
import 'package:notes/widgets/notes_list_view.dart';

class NotesViewBody extends StatelessWidget {
  const NotesViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomAppBar(appBarName: "Notes", icon: Icons.search),
        SizedBox(height: 20),
        Expanded(child: NotesListView()),
      ],
    );
  }
}
