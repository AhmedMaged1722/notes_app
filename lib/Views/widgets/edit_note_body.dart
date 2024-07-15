import 'package:flutter/material.dart';
import 'package:notes_app/Views/widgets/custom_app_bar.dart';
import 'package:notes_app/Views/widgets/custom_text_filed.dart';

class EditNoteBody extends StatelessWidget {
  const EditNoteBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.all(24),
      child: Column(
        children: [
          SizedBox(
            height: 40,
          ),
          CustomAppBar(
            title: 'Edit Note',
            icons: Icons.check,
          ),
          SizedBox(
            height: 40,
          ),
          CustomTextFiled(
            hintText: 'Title',
            maxLines: 1,
          ),
          SizedBox(
            height: 20,
          ),
          CustomTextFiled(
            hintText: 'Content',
            maxLines: 5,
          ),
        ],
      ),
    );
  }
}
