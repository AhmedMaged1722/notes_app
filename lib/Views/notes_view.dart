import 'package:flutter/material.dart';
import 'package:notes_app/Views/widgets/add_note.dart';
import 'package:notes_app/Views/widgets/notes_view_body.dart';
import 'package:notes_app/constans/color.dart';

class NotesView extends StatelessWidget {
  const NotesView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: Padding(
        padding: const EdgeInsets.only(right: 16, bottom: 30),
        child: FloatingActionButton(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30),
          ),
          tooltip: 'Add new item',
          onPressed: () {
            showModalBottomSheet(
                context: context,
                builder: (context) {
                  return const AddNote();
                });
          },
          backgroundColor: Colors.white,
          foregroundColor: kBlack,
          child: const Icon(
            Icons.add,
            size: 30,
          ),
        ),
      ),
      body: const NotesViewBody(),
    );
  }
}
