import 'package:flutter/material.dart';
import 'package:notes/widgets/custom_app_bar.dart';
import 'package:notes/widgets/custom_text_field.dart';

class NoteEditViewBody extends StatelessWidget {
  const NoteEditViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 30, right: 20, left: 20),
        child: Column(
          children: [
            CustomAppBar(appBarName: "Edit Note", icon: Icons.check),
            SizedBox(height: 40),
            CustomTextField(
              hintText: "Title",
              label: "Title",
              onSaved: (value) {},
              contentPadding: EdgeInsets.only(left: 10),
            ),
            SizedBox(height: 20),
            CustomTextField(
              hintText: "Content",
              label: "Content",
              onSaved: (value) {},
              contentPadding: EdgeInsets.only(left: 10, top: 85),
            ),
          ],
        ),
      ),
    );
  }
}
