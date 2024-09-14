import 'package:flutter/material.dart';
import 'package:notes_app/features/notes/domain/models/note.dart';

import '../../../domain/repository/notes_local_repository.dart';
import '../models/note_entity.dart';
import '../notes_db_servise.dart';

class NotesLocalRepositoryImpl implements NotesLocalRepository {
  final NotesDbServise _notesDbServise;

  NotesLocalRepositoryImpl({
    required NotesDbServise notesDbServise,
  }) : _notesDbServise = notesDbServise;

  @override
  Future<int> saveNote(Note note) {
    NoteEntity entity = NoteEntity(id: 0, title: note.title, content: note.content);
    final id = _notesDbServise.insertNote(entity);
    debugPrint('### saveNote -> id: $id');
    return id;
  }

  @override
  Future<List<Note>> getNotes() {
    final entities = _notesDbServise.getNotes();
    debugPrint('### getNotes -> entities: $entities');
    return entities
        .then((list) => list.map((e) => Note(id: e.id, title: e.title, content: e.content)).toList());
  }

  @override
  Future<Note?> getNoteById(int id) {
    final entity = _notesDbServise.getNotesById(id);
    debugPrint('### getNoteById -> entity: $entity');
    return entity.then((e) => e == null ? null : Note(id: e.id, title: e.title, content: e.content));
  }
}
