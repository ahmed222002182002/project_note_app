import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:notes_app_project/custom_widget/Edite_view_body.dart';
import 'package:notes_app_project/model/note_model.dart';
class EditView extends StatelessWidget {
  const EditView({required this.notemodel});
  final Notemodel notemodel;
  @override
  Widget build(BuildContext context) {
    return  EditViewBody(
      notemodel: notemodel,
    );
  }
}
