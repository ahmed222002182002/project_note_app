import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app_project/cubit/NotesCubit/cubit_notes.dart';
import 'package:notes_app_project/cubit/create_cubit.dart';
import 'package:notes_app_project/cubit/state_cubit.dart';
import 'package:notes_app_project/custom_widget/widget_form.dart';
class ShowModelButtonSheet extends StatelessWidget {
  const ShowModelButtonSheet();
  @override
  Widget build(BuildContext context) {
    return  BlocProvider(
      create: (context)=>Sheetecubit(),
      child: BlocConsumer<Sheetecubit, Stateallt>(
          listener: (context, state) {
            if(state is failerstate){
            }
            if(state is successtate){
              BlocProvider.of<NoteCubit>(context).fetchNotes();
              Navigator.pop(context);
            }
          },
          builder: (context, state) {
            return AbsorbPointer(
              absorbing: state is lodingstate?true:false,
              child: Padding(
                padding:  EdgeInsets.only(top: 30,right: 20,left: 20,
                    bottom:MediaQuery.of(context).viewInsets.bottom,

                ),
                child: const SingleChildScrollView(child:  FormWidget()),
              ),
            );
          }
      ),
    );
  }
}
