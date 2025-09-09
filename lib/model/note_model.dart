import 'package:hive/hive.dart';
part'note_model.g.dart';
@HiveType(typeId: 0)
class Notemodel{
 @HiveField(0)
  String title;
 @HiveField(1)
  String subtitel;
 @HiveField(2)
 final String data;
 @HiveField(3)
  int color;
 Notemodel({
 required this.title,
  required this.subtitel,
  required this.data,
   required this.color
});
}