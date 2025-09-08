import 'package:notes_app_project/model/note_model.dart';

abstract class StateallNote{}
class Noteintalstate extends StateallNote{}
class Notelodingstate extends StateallNote{
}
class Notesuccesstate extends StateallNote{
List<Notemodel> note;
 Notesuccesstate( this.note);
}
class Notefailerstate extends StateallNote{
  final String errormessage;
  Notefailerstate( this.errormessage);
}