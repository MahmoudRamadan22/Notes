import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes/app_models/note_model.dart';
import 'package:notes/cubits/add_note_cubit/add_note_cubit.dart';
import 'package:notes/simple_bloc_observer.dart';
import 'package:notes/views/edit_note_view.dart';
import 'package:notes/views/home_view.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:notes/constants.dart';

void main() async {
  Bloc.observer = SimpleBlocObserver();
  await Hive.initFlutter();
  await Hive.openBox(kNotesBox);
  Hive.registerAdapter(NoteModelAdapter());
  runApp(NotesApp());
}

class NotesApp extends StatelessWidget {
  const NotesApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [BlocProvider(create: (context) => AddNoteCubit())],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        routes: {
          HomeView.id: (context) => HomeView(),
          EditNoteView.id: (context) => EditNoteView(),
        },
        home: HomeView(),
        theme: ThemeData(brightness: Brightness.dark),
      ),
    );
  }
}
