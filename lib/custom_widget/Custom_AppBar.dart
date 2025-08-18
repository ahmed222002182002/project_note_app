import 'package:flutter/material.dart';
import 'package:notes_app_project/custom_widget/Custom_icon.dart';
class CustomAppBar extends StatelessWidget {
  const CustomAppBar({ required this.text,required this.icon});
  final String text;
  final  IconData icon;
  @override
  Widget build(BuildContext context) {
    return  Row(
      children: [
         Text(text,
           style:  const TextStyle(
          fontSize: 33,
        ),),
          const Spacer(),
        CustomIconbutten(
          icon: icon,
        ),
      ],
    );
  }
}