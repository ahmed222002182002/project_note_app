import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive/hive.dart';
import 'package:notes_app_project/cubit/state_cubit.dart';
import 'package:notes_app_project/helper/helper.dart';
import 'package:notes_app_project/model/note_model.dart';
class Notecubit extends Cubit<Stateallt>{
  Notecubit() : super(Noteinitalstate());
  getnotecubit( Notemodel note)async{
    emit(lodingstate());
    try {
      var notebox = Hive.box<Notemodel>(kNotsBox);
      emit(successtate());
      await notebox.add(note);
    }catch(e){
      failerstate(e.toString());
    }
  }
}