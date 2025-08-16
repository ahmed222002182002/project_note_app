import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:notes_app_project/custom_widget/Custom_icon.dart';
class ViewBody extends StatelessWidget {
  const ViewBody({super.key});
  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Row(
          children: [
            SizedBox(
              height: 180,
            ),
            Text('Notes',style: TextStyle(
              fontSize: 33,
            ),),
            Spacer(),
            CustomIconbutten(),
          ],
        )
      ],
    );
  }
}

