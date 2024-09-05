

part of 'notes_list_bloc.dart';

class NotesListState extends Equatable{

  final List <Note> notes;

  const NotesListState({required this.notes});

  NotesListState copyWith({List <Note>? notes}){
    return NotesListState(notes: notes?? this.notes);
  }

  @override
  // TODO: implement props
  List<Object?> get props => [notes];
}