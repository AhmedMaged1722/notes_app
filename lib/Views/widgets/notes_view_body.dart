import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:notes_app/Views/widgets/custom_app_bar.dart';
import 'package:notes_app/Views/widgets/custom_list_view.dart';

class NotesViewBody extends StatelessWidget {
  const NotesViewBody({super.key});

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
            title: 'Notes',
            icons: Icons.search,
          ),
          Expanded(
            child: CustomListView(),
          ),
        ],
      ),
    );
  }
}
