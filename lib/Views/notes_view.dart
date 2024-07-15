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
        padding: const EdgeInsets.only(right: 16, bottom: 42),
        child: FloatingActionButton(
          onPressed: () {
            showModalBottomSheet(
                backgroundColor: const Color(0xFFD0B8A8),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                context: context,
                builder: (context) {
                  return const AddNote();
                });
          },
          tooltip: 'Add new item',
          backgroundColor: kColor4,
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
