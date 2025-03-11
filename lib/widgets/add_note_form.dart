import 'package:flutter/material.dart';
import 'package:notes/widgets/custom_elevated_button.dart';
import 'package:notes/widgets/custom_text_field.dart';

class AddNoteForm extends StatefulWidget {
  const AddNoteForm({super.key});

  @override
  State<AddNoteForm> createState() => _AddNoteFormState();
}

class _AddNoteFormState extends State<AddNoteForm> {
  final GlobalKey<FormState> formKey = GlobalKey();
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;
  String? title, content;
  @override
  Widget build(BuildContext context) {
    return Form(
      autovalidateMode: autovalidateMode,
      key: formKey,
      child: Column(
        children: [
          CustomTextField(
            contentPadding: EdgeInsets.only(left: 10),
            hintText: "Title",
            label: "Title",
            onSaved: (value) {},
          ),
          SizedBox(height: 14),
          CustomTextField(
            contentPadding: EdgeInsets.only(top: 80, left: 10),
            hintText: "Content",
            label: "Content",
            onSaved: (value) {},
          ),
          SizedBox(height: 140),
          CustomElevatedButton(
            onPressed: () {
              if (formKey.currentState!.validate()) {
                formKey.currentState!.save();
              } else {
                setState(() {
                  autovalidateMode = AutovalidateMode.always;
                });
              }
            },
          ),
        ],
      ),
    );
  }
}
