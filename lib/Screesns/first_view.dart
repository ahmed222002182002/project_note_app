import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app_project/Screesns/view_body.dart';
import 'package:notes_app_project/cubit/NotesCubit/cubit_notes.dart';
import 'package:notes_app_project/custom_widget/show_model_sheet.dart';
class FirstView extends StatelessWidget {
  const FirstView();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(onPressed: () {
        showModalBottomSheet(
          isScrollControlled: true,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(24),
            ),
            context: context,
            builder:(context){
              return  const ShowModelButtonSheet();
            });
      },child: const Icon(Icons.add),),
      body: const ViewBody(),
    );
  }
}
