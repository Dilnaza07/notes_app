import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../notes/domain/models/note.dart';

part 'notes_list_state.dart';

part 'notes_list_event.dart';

class NotesListBloc extends Bloc<NotesListEvent, NotesListState> {
  NotesListBloc()
      : super(NotesListState(notes: [
          Note(title: 'Title', content: 'dfhgjhbgjfbgjbfkkfgjfbgkjbhkjbkjhb'),
          Note(title: 'Title', content: 'dfhgjhbgjfbgjbfkkfgjkfbgkhgfhgjbhkjbkjhb'),
          Note(title: 'Title', content: 'dfhgjhbgjfbgjbfkkfbgkjbhkjbkjhb'),
          Note(title: 'Title', content: 'dfhgjhbgjfbgjbfgjkfbgkjbhkjbkjhb'),
          Note(title: 'Title', content: 'dfhgjhbgjfbgjbfkkfgjkfbgkjbhkjbkjhb'),
          Note(title: 'Title', content: 'dfhgjhbgjfbgjbfkkfgjkfbgkhkjbkjhb'),
          Note(title: 'Title', content: 'dfhgjhbgjfbgjbfkkfgjkgkjbhkjbkjhb'),
          Note(title: 'Title', content: 'dfhgjhbgjfbgjbfkkfgjkfbgkjbhkjbkjhb'),
        ]));
}
