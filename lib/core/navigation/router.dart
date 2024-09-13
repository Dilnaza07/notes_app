import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:notes_app/core/navigation/routers/note_route.dart';
import 'package:notes_app/core/navigation/routers/notes_list_route.dart';
import 'package:notes_app/core/navigation/routers/profile_route.dart';
import 'package:notes_app/core/navigation/routers/reminders_route.dart';
import 'package:notes_app/features/notes_list/presentation/screen/notes_list_page.dart';
import 'package:notes_app/features/profile/presentation/screen/profile_page.dart';

import '../../features/home/presentation/screen/home_page.dart';
import '../../features/notes/presentation/screen/note_page.dart';
import '../../features/reminders/presentation/screen/reminders_page.dart';

class NotesRouter {
  final GoRouter _router = GoRouter(routes: [
    StatefulShellRoute.indexedStack(
        builder: (context, state, child) => HomePage(navigationShell: child),
        branches: <StatefulShellBranch>[
          StatefulShellBranch(routes: [
            GoRoute(
              path: NotesListRoute.name,
              pageBuilder: (context, state) => const MaterialPage(
                child: NotesListPage(),
              ),
            ),
            GoRoute(
                path: NoteRoute.name,
                pageBuilder: (context, state) => const MaterialPage(
                      child: NotePage(),
                    ))
          ]),
          StatefulShellBranch(routes: [
            GoRoute(
              path: RemindersRoute.name,
              pageBuilder: (context, state) => const MaterialPage(
                child: RemindersPage(),
              ),
            ),
          ]),
          StatefulShellBranch(routes: [
            GoRoute(
              path: ProfileRoute.name,
              pageBuilder: (context, state) => const MaterialPage(
                child: ProfilePage(),
              ),
            ),
          ]),
        ]),
  ]);

  GoRouter get router => _router;
}
