import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive/hive.dart';
import 'package:notes_app_project/cubit/state_cubit.dart';
import 'package:notes_app_project/helper/helper.dart';
import 'package:notes_app_project/model/note_model.dart';
class Sheetecubit extends Cubit<Stateallt>{
  Sheetecubit() : super(initalstate());
  getnotecubit( Notemodel note)async{
    emit(lodingstate());
    try {
      var notebox = Hive.box<Notemodel>(kNotsBox);
      await notebox.add(note);
      emit(successtate());

    }catch(e){
       emit (failerstate(e.toString()));
    }
  }
}