import 'package:flutter/material.dart';
import 'package:notes_app/Views/notes_view.dart';
import 'package:notes_app/constans/color.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: 'PFA',
        brightness: Brightness.dark,
        scaffoldBackgroundColor: kBlack,
      ),
      home: const NotesView(),
    );
  }
}
