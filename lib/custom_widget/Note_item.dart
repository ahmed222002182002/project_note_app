import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:notes_app_project/Screesns/Edit_view.dart';
import 'package:notes_app_project/model/note_model.dart';
class Noteitem extends StatelessWidget {
  const Noteitem({required this.notemodel});
  final Notemodel notemodel;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        Navigator.of(context).push(MaterialPageRoute(builder: (context){
          return const EditView();
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
                  trailing: IconButton(onPressed: (){},
                    icon:const Icon(Icons.delete_rounded) ,color:Colors.black,
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
