import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/features/notes/domain/notes_interactor.dart';

import '../../../notes/domain/models/note.dart';
import 'package:flutter/material.dart';

part 'notes_list_state.dart';

part 'notes_list_event.dart';

class NotesListBloc extends Bloc<NotesListEvent, NotesListState> {
  NotesListBloc({required NotesInteractor notesInteractor})
      : _notesInteractor = notesInteractor,
        super(NotesListState(notes: [])) {
    on<NotesDataLoaded>(_onNotesDataLoaded);
  }

  final NotesInteractor _notesInteractor;

  void _onNotesDataLoaded(NotesDataLoaded event, Emitter<NotesListState> emit) async {
    final notes = await _notesInteractor.getNotes();
    debugPrint('### NOTESLISTBLOC -> notes: $notes, notes.length: ${notes.length}');
    emit(state.copyWith(notes: notes));
  }
}
