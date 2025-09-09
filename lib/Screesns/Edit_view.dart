import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:notes_app_project/custom_widget/Custom_AppBar.dart';
import 'package:notes_app_project/custom_widget/custom_textfield.dart';
import 'package:notes_app_project/model/note_model.dart';
class EditView extends StatelessWidget {
  const EditView();
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Padding(
        padding: EdgeInsets.only(left: 10,right: 20),
        child: Column (
          children: [
            SizedBox(
              height: 80,
            ),
            CustomAppBar(text: 'Edit View', icon: Icons.check),
            SizedBox(
              height: 40,
            ),
            CustomTextfield(hint: 'Titel',
            ),
            SizedBox(
              height: 20,
            ),
            CustomTextfield(hint: 'content',
            maxlines: 6,
            ),
          ],
        ),
      ),
    );
  }
}
