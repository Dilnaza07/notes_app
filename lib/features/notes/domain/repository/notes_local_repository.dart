
import '../models/note.dart';

abstract class NotesLocalRepository {
  Future<int> saveNote(Note note);

  Future<List<Note>> getNotes();

  Future<Note?> getNoteById(int id);
}
