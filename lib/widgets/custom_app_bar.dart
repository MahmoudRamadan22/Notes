import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key, required this.appBarName, required this.icon});
  final String appBarName;
  final IconData icon;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 15, right: 15, left: 15),
      child: Row(
        children: [
          Text(appBarName, style: TextStyle(fontSize: 26)),
          Spacer(),
          IconButton(onPressed: () {}, icon: Icon(icon, size: 30)),
        ],
      ),
    );
  }
}
