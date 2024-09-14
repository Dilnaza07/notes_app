part of 'notes_list_bloc.dart';

sealed class NotesListEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

class NotesDataLoaded extends NotesListEvent {
  NotesDataLoaded();
}
