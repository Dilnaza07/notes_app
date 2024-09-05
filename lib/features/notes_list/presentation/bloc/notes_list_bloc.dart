import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../domain/note.dart';

part 'notes_list_state.dart';

part 'notes_list_event.dart';

class NotesListBloc extends Bloc<NotesListEvent, NotesListState> {
  NotesListBloc()
      : super(NotesListState(notes: [
          Note(title: 'title1', context: 'dfhgjhbgjfbgjbfkkfgjfbgkjbhkjbkjhb'),
          Note(title: 'title1', context: 'dfhgjhbgjfbgjbfkkfgjkfbgkhgfhgjbhkjbkjhb'),
          Note(title: 'title1', context: 'dfhgjhbgjfbgjbfkkfbgkjbhkjbkjhb'),
          Note(title: 'title1', context: 'dfhgjhbgjfbgjbfgjkfbgkjbhkjbkjhb'),
          Note(title: 'title1', context: 'dfhgjhbgjfbgjbfkkfgjkfbgkjbhkjbkjhb'),
          Note(title: 'title1', context: 'dfhgjhbgjfbgjbfkkfgjkfbgkhkjbkjhb'),
          Note(title: 'title1', context: 'dfhgjhbgjfbgjbfkkfgjkgkjbhkjbkjhb'),
          Note(title: 'title1', context: 'dfhgjhbgjfbgjbfkkfgjkfbgkjbhkjbkjhb'),
        ]));
}
