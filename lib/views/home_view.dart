import 'package:flutter/material.dart';
import 'package:notes/widgets/notes_view_body.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});
  static String id = "home_view";
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.only(right: 25, left: 25, top: 25),
          child: NotesViewBody(),
        ),
      ),
    );
  }
}
