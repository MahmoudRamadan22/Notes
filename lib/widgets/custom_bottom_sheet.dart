import 'package:flutter/material.dart';
import 'package:notes/widgets/custom_elevated_button.dart';
import 'package:notes/widgets/custom_text_field.dart';

class BottomSheetModel extends StatelessWidget {
  const BottomSheetModel({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: SingleChildScrollView(
        child: Column(
          children: [
            CustomTextField(
              contentPadding: EdgeInsets.only(left: 10),
              hintText: "Title",
              label: "Title",
              onSubmitted: (value) {},
            ),
            SizedBox(height: 14),
            CustomTextField(
              contentPadding: EdgeInsets.only(top: 80, left: 10),
              hintText: "Content",
              label: "Content",
              onSubmitted: (value) {},
            ),
            SizedBox(height: 170),
            CustomElevatedButton(),
          ],
        ),
      ),
    );
  }
}
