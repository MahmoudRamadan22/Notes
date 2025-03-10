import 'package:flutter/material.dart';
import 'package:notes/widgets/custom_floating_action_button.dart';
import 'package:notes/widgets/notes_view_body.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});
  static String id = "home_view";
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        floatingActionButton: CustomFloatingActionButton(),
        body: NotesViewBody(),
      ),
    );
  }
}
