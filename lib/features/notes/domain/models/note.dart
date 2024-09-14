import 'package:equatable/equatable.dart';

class Note extends Equatable {
  final String title;
  final String content;
  final int? id;

  Note({this.id, required this.title, required this.content});

  @override
  List<Object?> get props => [title, content];
}
