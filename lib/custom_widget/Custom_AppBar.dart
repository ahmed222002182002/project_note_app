import 'package:flutter/material.dart';
import 'package:notes_app_project/custom_widget/Custom_icon.dart';
class CustomAppBar extends StatelessWidget {
  const CustomAppBar({ required this.text,required this.icon, this.onPressed});
  final String text;
  final  IconData icon;
  final void Function()? onPressed;
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
          onPressed: onPressed,
          icon: icon,
        ),
      ],
    );
  }
}