import 'package:flutter/material.dart';
import 'package:notes_app/Views/widgets/add_note.dart';
import 'package:notes_app/Views/widgets/notes_view_body.dart';
import 'package:notes_app/constans/const.dart';

class NotesView extends StatelessWidget {
  const NotesView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      floatingActionButton: Padding(
        padding: const EdgeInsets.only(right: 8, bottom: 24),
        child: FloatingActionButton(
          onPressed: () {
            showModalBottomSheet(
                isScrollControlled: true,
                backgroundColor: kColor2,
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
