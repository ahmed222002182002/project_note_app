import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app_project/cubit/NotesCubit/cubit_notes.dart';
import 'package:notes_app_project/custom_widget/Custom_AppBar.dart';
import 'package:notes_app_project/custom_widget/custom_textfield.dart';
import 'package:notes_app_project/model/note_model.dart';
class EditViewBody extends StatefulWidget {
  const EditViewBody({required this.notemodel});
  final Notemodel notemodel;

  @override
  State<EditViewBody> createState() => _EditViewBodyState();
}
 String? titel,content;

class _EditViewBodyState extends State<EditViewBody> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Padding(
        padding:const  EdgeInsets.only(left: 10,right: 20),
        child: Column (
          children: [
            const SizedBox(
              height: 80,
            ),
            CustomAppBar(
              onPressed:(){
                widget.notemodel.title=titel??widget.notemodel.title;
                widget.notemodel.subtitel=content??widget.notemodel.subtitel;
                Navigator.pop(context);
                BlocProvider.of<NoteCubit>(context).fetchNotes();



              },
                text: 'Edit View', icon: Icons.check),
            const SizedBox(
              height: 40,
            ),
             CustomTextfield(
              onChanged: (value){
                titel=value;
              },
              hint: 'Titel',
            ),
            const SizedBox(
              height: 20,
            ),
             CustomTextfield(
              onChanged: (value){
                content=value;
              },
              hint: 'content',
              maxlines: 6,
            ),
          ],
        ),
      ),
    );
  }
}
