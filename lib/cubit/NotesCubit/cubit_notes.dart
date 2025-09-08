import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:notes_app_project/cubit/NotesCubit/state_Note_cubit.dart';
import 'package:notes_app_project/helper/helper.dart';
import 'package:notes_app_project/model/note_model.dart';
class NoteCubit extends Cubit<StateallNote> {
  NoteCubit() : super(Noteintalstate());
  fetchNotes(){
    try {
      var notebox = Hive.box<Notemodel>(kNotsBox);
      emit(Notesuccesstate(notebox.values.toList()));
    }catch(e){
      emit (Notefailerstate(e.toString()));
    }

  }
}
