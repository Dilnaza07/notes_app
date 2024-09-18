import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/features/notes/domain/notes_interactor.dart';

import '../../domain/models/note.dart';
import 'package:flutter/material.dart';

part 'note_state.dart';

class NoteCubit extends Cubit<NoteState> {
  NoteCubit({
    int? id,
    required NotesInteractor notesInteractor,
  })  : _notesInteractor = notesInteractor,
        super(NoteState(title: '', content: '')) {
    if (id != null) _loadNoteById(id);
  }

  final NotesInteractor _notesInteractor;

  final TextEditingController titleController = TextEditingController();
  final TextEditingController contentController = TextEditingController();

  void updateTitle(String title) {
    debugPrint('### NoteCubit -> updateTitle -> title: $title');

    emit(state.copyWith(title: title));
  }

  void updateContent(String content) {
    debugPrint('### NoteCubit -> updateContent -> content: $content');
    emit(state.copyWith(content: content));
  }

  void saveNote() async {
    final note = Note(id: state.id, title: titleController.text, content: contentController.text);
    final id = await _notesInteractor.saveNote(note);
    debugPrint('### NoteCubit -> saveNote -> id: $id');
    emit(state.copyWith(needExit: true));
  }

  void _loadNoteById(int id) async {
    emit(state.copyWith(id: id, isLoading: true));
    final note = await _notesInteractor.getNoteById(id);
    titleController.text = note?.title ?? '';
    contentController.text = note?.content ?? '';
    emit(state.copyWith(isLoading: false));
    // emit(state.copyWith(title: note?.title, content: note?.content, shouldInit: true));
  }
}
