import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app_project/cubit/NotesCubit/cubit_notes.dart';
import 'package:notes_app_project/custom_widget/Custom_AppBar.dart';
import 'package:notes_app_project/custom_widget/list_Item.dart';
class ViewBody extends StatefulWidget {
  const ViewBody();
  @override
  State<ViewBody> createState() => _ViewBodyState();
}

class _ViewBodyState extends State<ViewBody> {

  @override
  void initState(){
    BlocProvider.of<NoteCubit>(context).fetchNotes();
    super.initState();
  }

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

