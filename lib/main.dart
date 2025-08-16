import 'package:flutter/material.dart';
import 'package:notes_app_project/Screesns/first_view.dart';
void main() {
  runApp(const NotApp());
}
class NotApp extends StatelessWidget {
  const NotApp({super.key});
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        brightness: Brightness.dark
      ),
      home:const FirstView(),
    );

        }
}
