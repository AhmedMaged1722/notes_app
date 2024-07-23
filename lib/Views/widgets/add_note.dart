import 'package:flutter/material.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';
import 'package:notes_app/Cubit/add_note_cubit/add_note_cubit.dart';
import 'package:notes_app/Views/widgets/add_note_form_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

// ignore: must_be_immutable
class AddNote extends StatefulWidget {
  const AddNote({super.key});

  @override
  State<AddNote> createState() => _AddNoteState();
}

class _AddNoteState extends State<AddNote> {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AddNoteCubit(),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: BlocConsumer<AddNoteCubit, AddNoteState>(
          listener: (context, state) {
            if (state is AddNoteSuccess) {
              Navigator.pop(context);
            }
            if (state is AddNoteFailure) {
              debugPrint('Fail');
            }
          },
          builder: (context, state) {
            return const ModalProgressHUD(
              inAsyncCall: State is AddNoteLoading ? true : false,
              child: SingleChildScrollView(
                child: AddNoteFormState(),
              ),
            );
          },
        ),
      ),
    );
  }
}
