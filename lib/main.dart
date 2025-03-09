import 'package:flutter/material.dart';
import 'package:notes/views/home_view.dart';

void main() {
  runApp(NotesApp());
}

class NotesApp extends StatelessWidget {
  const NotesApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {HomeView.id: (context) => HomeView()},
      home: HomeView(),
      theme: ThemeData(brightness: Brightness.dark),
    );
  }
}
