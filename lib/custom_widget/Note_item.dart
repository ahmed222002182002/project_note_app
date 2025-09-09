import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:notes_app_project/Screesns/Edit_view.dart';
import 'package:notes_app_project/cubit/NotesCubit/cubit_notes.dart';
import 'package:notes_app_project/helper/helper.dart';
import 'package:notes_app_project/model/note_model.dart';
class Noteitem extends StatelessWidget {
  const Noteitem({required this.notemodel,required this.index});
  final Notemodel notemodel;
  final int index;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        Navigator.of(context).push(MaterialPageRoute(builder: (context){
          return  const EditView();
        }));
      },
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          color: Color(notemodel.color),
        ),
        child:  Padding(
          padding: const EdgeInsets.only(left: 12,top: 32,bottom: 24),
          child: Column(
              children: [
                ListTile(
                  title:  Padding(
                    padding:const  EdgeInsets.only(bottom: 16),
                    child:  Text(notemodel.title,style: const TextStyle(
                      color: Colors.black,
                      fontSize: 35,
                    ),),
                  ),

                  subtitle: Padding(
                    padding: const EdgeInsets.only(right: 24),
                    child: Text(notemodel.subtitel,style: TextStyle(
                      fontSize: 18,
                      color: Colors.black.withOpacity(0.2),
                    ),),
                  ),
                  trailing: IconButton(onPressed: (){
                    var notebox = Hive.box<Notemodel>(kNotsBox);
                    notebox.deleteAt(index);
                    BlocProvider.of<NoteCubit>(context).fetchNotes();
                  },
                    icon:const Icon(Icons.delete) ,color:Colors.black,
                  iconSize: 45,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 200,top: 30,),
                  child: Text(notemodel.data,style: TextStyle(
                    fontSize: 18,
                    color: Colors.black.withOpacity(0.2),
                  ),),
                ),
              ],
            ),
        ),
      ),
    );
  }
}
