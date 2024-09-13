import 'package:notes_app/features/notes/data/db/models/note_entity.dart';
import 'package:notes_app/features/notes/data/db/notes_db_servise.dart';
import 'package:flutter/material.dart';

import '../models/note.dart';

abstract class NotesLocalRepository {
  Future<int> saveNote(Note note);

  Future<List<Note>> getNotes();

  Future<Note?> getNoteById(int id);
}
