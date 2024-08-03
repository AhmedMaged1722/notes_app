part of 'notes_cubit.dart';

@immutable
sealed class NotesState {}

final class NotesInitial extends NotesState {}

final class NotesLoading extends NotesState {}

final class NotesSccess extends NotesState {
  final List<NoteModel> notes;

  NotesSccess({required this.notes});
}

final class NotesFailure extends NotesState {
  final String error;

  NotesFailure({required this.error});
}
