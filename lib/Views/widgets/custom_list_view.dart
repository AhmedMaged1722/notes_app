import 'package:flutter/material.dart';
import 'package:notes_app/Views/widgets/note_item.dart';

class CustomListView extends StatelessWidget {
  const CustomListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      physics: const ClampingScrollPhysics(),
      itemBuilder: (BuildContext context, int index) {
        return const Padding(
          padding: EdgeInsets.only(bottom: 12),
          child: NoteItem(),
        );
      },
      itemCount: 15,
    );
  }
}
