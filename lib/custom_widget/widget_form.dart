import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app_project/cubit/create_cubit.dart';
import 'package:notes_app_project/cubit/state_cubit.dart';
import 'package:notes_app_project/custom_widget/Custom_add_Buttton.dart';
import 'package:notes_app_project/custom_widget/custom_textfield.dart';
import 'package:notes_app_project/model/note_model.dart';
class FormWidget extends StatefulWidget {
  const FormWidget();

  @override
  State<FormWidget> createState() => _FormWidgetState();
}
class _FormWidgetState extends State<FormWidget> {
  final GlobalKey<FormState>formkey=GlobalKey();
  AutovalidateMode autovalidateMode=AutovalidateMode.disabled;
  String? titel,subtitel;
  @override
  Widget build(BuildContext context) {
    return Form(
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
          BlocBuilder<Sheetecubit,Stateallt>(
            builder: (context, state) {
              return CustomAddButton(
                isloding: state is lodingstate? true:false,
                onTap: (){
                  if(formkey.currentState!.validate()){
                    formkey.currentState!.save();
                   var notemodel=Notemodel(title: titel!, subtitel: subtitel!, data: DateTime.now().toString(), color: Colors.orange.value);
                    BlocProvider.of<Sheetecubit>(context).getnotecubit(notemodel);
                  }else{
                    autovalidateMode=AutovalidateMode.always;
                  }
                  setState(() {

                  });

                },
              );
            }
          ),
        ],
      ),
    );
  }
}
