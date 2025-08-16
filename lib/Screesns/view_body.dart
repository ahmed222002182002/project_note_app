import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:notes_app_project/custom_widget/Custom_icon.dart';
import 'package:notes_app_project/custom_widget/Note_item.dart';
class ViewBody extends StatelessWidget {
  const ViewBody({super.key});
  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.all(24),
      child:  Column(
        children: [
          Row(
            children: [
              SizedBox(
                height: 140,
              ),
              Text('Notes',style: TextStyle(
                fontSize: 33,
              ),),
              Spacer(),
              CustomIconbutten(),
            ],
          ),
          Noteitem(),
        ],
      ),
    );
  }
}

