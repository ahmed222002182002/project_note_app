import 'package:flutter/cupertino.dart';
import 'package:notes_app_project/custom_widget/Custom_add_Buttton.dart';
import 'package:notes_app_project/custom_widget/custom_textfield.dart';
class ShowModelButtonSheet extends StatefulWidget {
  const ShowModelButtonSheet();
  @override
  State<ShowModelButtonSheet> createState() => _ShowModelButtonSheetState();
}
class _ShowModelButtonSheetState extends State<ShowModelButtonSheet> {
  final GlobalKey<FormState>formkey=GlobalKey();
  AutovalidateMode autovalidateMode=AutovalidateMode.disabled;
  String? titel,subtitel;
  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding:  const EdgeInsets.all(25),
      child: SingleChildScrollView(
        child: Form(
          key: formkey,
          autovalidateMode: autovalidateMode,
          child:  Column(
            children: [
              CustomTextfield(
                onSaved: (value){
                  titel=value;
                },
                hint: 'Titel',
              ),
              const SizedBox(
                height: 20,
              ),
              CustomTextfield(
                onSaved: (value){
                  subtitel=value;
                },
                hint: 'content',
                maxlines: 6,
              ),
              const SizedBox(
                height: 140,
              ),
              CustomAddButton(
               onTap: (){
                 if(formkey.currentState!.validate()){
                   formkey.currentState!.save();
                 }else{
                   autovalidateMode=AutovalidateMode.always;
                 }
                 setState(() {

                 });

               },
             ),
            ],
          ),
        ),
      ),
    );
  }
}
