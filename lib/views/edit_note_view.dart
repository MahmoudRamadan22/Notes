import 'package:flutter/material.dart';
import 'package:notes/widgets/edit_note_view_body.dart';

class EditNoteView extends StatelessWidget {
  const EditNoteView({super.key});
  static String id = "edit_note_view";
  @override
  Widget build(BuildContext context) {
    return NoteEditViewBody();
  }
}
