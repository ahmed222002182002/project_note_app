import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:notes_app_project/custom_widget/Custom_AppBar.dart';
import 'package:notes_app_project/custom_widget/list_Item.dart';
class ViewBody extends StatelessWidget {
  const ViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 20),
      child:  Column(
        children: [
          SizedBox(
            height: 80,),
             CustomAppBar(text: 'Notes', icon: Icons.search,),
         Expanded (child: Noteslistview()),
        ],
      ),
    );
  }
}

