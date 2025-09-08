import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:notes_app_project/helper/helper.dart';
class CustomAddButton extends StatelessWidget {
  const CustomAddButton({this.onTap,this.isloding=false});
   final void Function()? onTap;
   final bool isloding;
  @override
  Widget build(BuildContext context) {
    return  GestureDetector(
      onTap:onTap ,
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: 50,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          color: kPrimaryColor,
        ),
        child:   Center(
          child:isloding?const CircularProgressIndicator(
              color: Colors.black,
          ):
       const Text('Add',style: TextStyle(
          color: Colors.black,
          fontSize: 20,
          fontWeight: FontWeight.bold,
        ),),),
      ),
    );
  }
}
