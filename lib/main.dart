import 'package:flutter/material.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:notes_app/Views/notes_view.dart';
import 'package:notes_app/constans/const.dart';

void main() async {
  Hive.initFlutter;
  await Hive.openBox(kNotesBox);
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
        brightness: Brightness.light,
        scaffoldBackgroundColor: kColor1,
      ),
      home: const NotesView(),
    );
  }
}
