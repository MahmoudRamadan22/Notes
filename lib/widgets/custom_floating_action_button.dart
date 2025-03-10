import 'package:flutter/material.dart';
import 'package:notes/widgets/custom_bottom_sheet.dart';

class CustomFloatingActionButton extends StatelessWidget {
  const CustomFloatingActionButton({super.key});

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      backgroundColor: Colors.blueAccent,
      onPressed: () {
        showModalBottomSheet(
          context: context,
          builder: (context) => BottomSheetModel(),
        );
      },
      child: Icon(Icons.add),
    );
  }
}
