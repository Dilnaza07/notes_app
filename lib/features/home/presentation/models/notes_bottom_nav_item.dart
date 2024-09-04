import 'package:notes_app/core/navigation/routers/notes_list_route.dart';
import 'package:notes_app/core/navigation/routers/profile_route.dart';
import 'package:notes_app/core/navigation/routers/reminders_route.dart';

enum NotesBottomNavItem {
  notesList,
  reminders,
  profile;

  String getRoute() {
    return switch (this) {
      NotesBottomNavItem.notesList => NotesListRoute.name,
      NotesBottomNavItem.reminders => RemindersRoute.name,
      NotesBottomNavItem.profile => ProfileRoute.name,
    };
  }

  static NotesBottomNavItem? from(int index) {
    return NotesBottomNavItem.values.firstWhere(
      (e) => e.index == index,
      orElse: () => NotesBottomNavItem.notesList,
    );
  }
}
