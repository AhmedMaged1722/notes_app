import 'package:flutter/material.dart';
import 'package:notes_app/Views/widgets/add_note_form_state.dart';

class AddNote extends StatelessWidget {
  const AddNote({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 16),
      child: SingleChildScrollView(
        child: AddNoteFormState(),
      ),
    );
  }
}
