import 'package:flutter/material.dart';
import 'package:notes_app_project/custom_widget/Note_item.dart';
class Noteslistview extends StatelessWidget {
  const Noteslistview({super.key});
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemBuilder: (context,index){
      return const Padding(
        padding:  EdgeInsets.symmetric(vertical: 4),
        child:  Noteitem(),
      );
    });
  }
}