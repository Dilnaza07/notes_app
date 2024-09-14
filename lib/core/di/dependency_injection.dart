import 'package:get_it/get_it.dart';
import 'package:notes_app/features/notes/di/notes_module.dart';
import 'package:notes_app/features/notes_list/di/notes_list_module.dart';

import 'core_module.dart';

final getIt = GetIt.instance;

void initDependencyInjection() {
  initCoreModule();
  initNotesModule();
  initNotesListModule();
}
