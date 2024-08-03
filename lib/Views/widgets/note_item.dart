import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:notes_app/Cubit/notes_cubit/notes_cubit.dart';
import 'package:notes_app/Models/note_model.dart';
import 'package:notes_app/Views/edit_view.dart';
import 'package:notes_app/constans/const.dart';

class NoteItem extends StatelessWidget {
  const NoteItem({super.key, required this.note});
  final NoteModel note;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) {
          return EditView(
            note: note,
          );
        }));
      },
      child: Container(
        padding: const EdgeInsets.only(top: 16, bottom: 16, left: 16),
        decoration: BoxDecoration(
          color: kColor2,
          borderRadius: BorderRadius.circular(15),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            ListTile(
              textColor: kBlack,
              iconColor: kBlack,
              title: Text(
                note.title,
                style: const TextStyle(fontSize: 28, color: kColor4),
              ),
              subtitle: Padding(
                padding: const EdgeInsets.symmetric(vertical: 16),
                child: Text(
                  note.subTitle,
                  style: TextStyle(
                    color: kColor4.withOpacity(0.7),
                    fontSize: 18,
                  ),
                ),
              ),
              trailing: IconButton(
                tooltip: 'Delete',
                onPressed: () {
                  note.delete();
                  BlocProvider.of<NotesCubit>(context).getNotes();
                },
                icon: const FaIcon(
                  FontAwesomeIcons.trash,
                  color: kColor4,
                  size: 32,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 24),
              child: Text(
                note.date,
                style: TextStyle(
                  color: kColor4.withOpacity(0.7),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
