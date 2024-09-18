part of 'note_cubit.dart';

class NoteState extends Equatable {
  final int? id;
  final String title;
  final String content;
  final bool needExit;
  final bool isLoading;

  NoteState(
      {this.id,
      required this.title,
      required this.content,
      this.needExit = false,
      this.isLoading = false});

  NoteState copyWith({int? id, String? title, String? content, bool? needExit, bool? isLoading}) {
    return NoteState(
        id: id ?? this.id,
        title: title ?? this.title,
        content: content ?? this.content,
        needExit: needExit ?? this.needExit,
        isLoading: isLoading ?? this.isLoading);
  }

  @override
  List<Object?> get props => [id, title, content, needExit, isLoading];
}
