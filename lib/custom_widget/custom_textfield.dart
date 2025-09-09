import 'package:flutter/material.dart';
import 'package:notes_app_project/helper/helper.dart';
class CustomTextfield extends StatelessWidget {
  const CustomTextfield({required this.hint,  this.maxlines=1,this.onSaved, this.onChanged});
  final String hint;
  final int maxlines;
  final void Function(String?)? onSaved;
  final void Function(String)? onChanged;
  @override
  Widget build(BuildContext context) {
    return  TextFormField(
      onChanged:onChanged ,
     onSaved: onSaved,
      validator: (value){
       if(value?.isEmpty??true) {
         return 'field is reqied';
       }else{
         return null;
       }
      },
      maxLines: maxlines,
      cursorColor: kPrimaryColor,
      decoration: InputDecoration(
        hintText: hint,
        hintStyle: TextStyle(
          color: kPrimaryColor,
        ),
        border: buildOutlineInputBorder(),
        enabledBorder: buildOutlineInputBorder(),
        focusedBorder:buildOutlineInputBorder(kPrimaryColor) ,
      ),
    );
  }
  OutlineInputBorder buildOutlineInputBorder([color]) {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(6),
      borderSide: BorderSide(
        color: color ??Colors.white,
      )
      );
  }
}
