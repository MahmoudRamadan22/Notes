import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes/cubits/add_note_cubit/add_note_cubit.dart';
import 'package:notes/widgets/add_note_form.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';

class BottomSheetModel extends StatelessWidget {
  const BottomSheetModel({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: SingleChildScrollView(
        child: BlocConsumer<AddNoteCubit, AddNoteState>(
          listener: (context, state) {
            if (state is AddNoteLoading) {
              AddNoteCubit().isLoading = true;
            } else if (state is AddNoteSuccess) {
              AddNoteCubit().isLoading = false;
              Navigator.pop(context);
            } else if (state is AddNoteFailure) {
              print("failed ${state.errorMsg}");
            }
          },
          builder: (context, state) {
            return ModalProgressHUD(
              inAsyncCall: AddNoteCubit().isLoading,
              child: AddNoteForm(),
            );
          },
        ),
      ),
    );
  }
}
