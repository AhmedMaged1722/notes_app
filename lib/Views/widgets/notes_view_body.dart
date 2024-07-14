import 'package:flutter/material.dart';
import 'package:notes_app/Views/widgets/custom_app_bar.dart';

class NotesViewBody extends StatelessWidget {
  const NotesViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.all(8.0),
      child: Column(
        children: [
          SizedBox(
            height: 40,
          ),
          CustomAppBar(),
        ],
      ),
    );
  }
}
