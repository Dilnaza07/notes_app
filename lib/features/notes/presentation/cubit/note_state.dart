part of 'note_cubit.dart';

class NoteState extends Equatable {
  final String title;
  final String content;
  final bool needExit;

  NoteState({required this.title, required this.content, this.needExit = false});

  NoteState copyWith({String? title, String? content, bool? needExit}) {
    return NoteState(
        title: title ?? this.title,
        content: content ?? this.content,
        needExit: needExit ?? this.needExit);
  }

  @override
  List<Object?> get props => [title, content, needExit];
}
