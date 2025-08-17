import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class CustomIconbutten extends StatelessWidget {
  const CustomIconbutten({super.key});
  @override
  Widget build(BuildContext context) {
    return   Container(
      height: 55,
      width: 60,
      decoration: BoxDecoration(
        color: Colors.white.withOpacity(0.02),
        borderRadius: BorderRadius.circular(15),
      ),
      child:  IconButton(onPressed: () {},  icon: const Icon(Icons.search),iconSize: 35,),
    );
  }
}
