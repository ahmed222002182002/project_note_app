import 'package:flutter/material.dart';
import 'package:notes_app_project/custom_widget/Custom_icon.dart';
class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});
  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
         Text('Notes',style: TextStyle(
          fontSize: 33,
        ),),
        Spacer(),
        CustomIconbutten(),
      ],
    );
  }
}