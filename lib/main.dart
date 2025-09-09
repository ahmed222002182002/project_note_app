import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:notes_app_project/Screesns/first_view.dart';
import 'package:notes_app_project/cubit/NotesCubit/cubit_notes.dart';
import 'package:notes_app_project/cubit/bloc_simple_observ.dart';
import 'package:notes_app_project/cubit/create_cubit.dart';
import 'package:notes_app_project/helper/helper.dart';
import 'package:notes_app_project/model/note_model.dart';
void main() async{
  Bloc.observer=SimpleBloc();
   await Hive.initFlutter();
  Hive.registerAdapter(NotemodelAdapter());
 await Hive.openBox<Notemodel>(kNotsBox);
  runApp(const NotApp());
}
class NotApp extends StatelessWidget {
  const NotApp();
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context)=>NoteCubit(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          brightness: Brightness.dark,
          fontFamily: 'Poppins',

        ),
        home:const FirstView(),
      ),
    );

        }
}
