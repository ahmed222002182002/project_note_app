import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class CustomIconbutten extends StatelessWidget {
  const CustomIconbutten({ required this.icon, this.onPressed});
  final IconData icon;
   final void Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    return   Container(
      height: 55,
      width: 60,
      decoration: BoxDecoration(
        color: Colors.white.withOpacity(0.02),
        borderRadius: BorderRadius.circular(15),
      ),
      child:  IconButton(onPressed:onPressed,
        icon: Icon(icon),iconSize: 35,),
    );
  }
}
