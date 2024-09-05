import 'package:equatable/equatable.dart';

class Note extends Equatable {
  final String title;
  final String context;

  Note({required this.title, required this.context});

  @override
  // TODO: implement props
  List<Object?> get props => [title, context];
}
