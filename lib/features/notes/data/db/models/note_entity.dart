import 'package:equatable/equatable.dart';

import '../notes_db_servise.dart';

class NoteEntity extends Equatable {
  final int id;
  final String title;
  final String content;

  const NoteEntity({required this.id, required this.title, required this.content});

  factory NoteEntity.fromJson(Map<String, dynamic> json) {
    return NoteEntity(
      id: json['id'],
      title: json['title'],
      content: json['content'],
    );
  }

  Map<String, dynamic> toJson() => {
       // NotesDbServise.columnId: id,
        NotesDbServise.columnTitle: title,
        NotesDbServise.columnContent: content,
      };

  @override
  List<Object?> get props => [id, title, content];
}
