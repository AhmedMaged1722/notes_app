import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:notes_app/Cubit/notes_cubit/notes_cubit.dart';
import 'package:notes_app/Models/note_model.dart';
import 'package:notes_app/Views/notes_view.dart';
import 'package:notes_app/constans/const.dart';
import 'package:notes_app/simble_bloc_observer.dart';

void main() async {
  await Hive.initFlutter();
  Bloc.observer = SimbleBlocObserver();
  Hive.registerAdapter(NoteModelAdapter());
  await Hive.openBox<NoteModel>(kNotesBox);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => NotesCubit(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          fontFamily: 'PFA',
          brightness: Brightness.light,
          scaffoldBackgroundColor: kColor1,
        ),
        home: const NotesView(),
      ),
    );
  }
}
