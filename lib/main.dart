import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

import 'core/di/core_module.dart';
import 'core/di/dependency_injection.dart';
import 'core/navigation/router.dart';
import 'generated/l10n.dart';

void main() {
  initDependencyInjection();
  runApp(NotesApp(
    notesRouter: getIt(),
  ));
}

class NotesApp extends StatelessWidget {
  const NotesApp({super.key, required this.notesRouter});
final NotesRouter notesRouter;
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routeInformationProvider: notesRouter.router.routeInformationProvider,
      routeInformationParser: notesRouter.router.routeInformationParser,
      routerDelegate: notesRouter.router.routerDelegate,
      debugShowCheckedModeBanner: false,
      localizationsDelegates: const[
       S.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
     supportedLocales: S.delegate.supportedLocales,
    );
  }
}

