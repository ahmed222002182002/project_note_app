import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app_project/cubit/NotesCubit/cubit_notes.dart';
import 'package:notes_app_project/cubit/NotesCubit/state_Note_cubit.dart';
import 'package:notes_app_project/custom_widget/Note_item.dart';
import 'package:notes_app_project/model/note_model.dart';
class Noteslistview extends StatelessWidget {
  const Noteslistview();
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NoteCubit,StateallNote>(
      builder: (context,state) {
     List<Notemodel> notes=  BlocProvider.of<NoteCubit>(context).notes??[];
        return ListView.builder(
          itemCount: notes.length,
        itemBuilder: (context,index){
        return  Padding(
        padding: EdgeInsets.symmetric(vertical: 4),
        child: Noteitem(
          notemodel:notes[index] ,
          index: index,
        ),
        );
        });
      }
    );
  }
}