
import 'package:notes_app/features/notes/data/db/notes_db_servise.dart';
import 'package:notes_app/features/notes/data/db/repository/notes_local_repository_impl.dart';
import 'package:notes_app/features/notes/domain/notes_interactor.dart';
import 'package:notes_app/features/notes/domain/repository/notes_local_repository.dart';

import '../../../core/di/dependency_injection.dart';
import '../presentation/cubit/note_cubit.dart';

void initNotesModule(){

  getIt.registerLazySingleton(()=> NotesDbServise(notesDatabase: getIt()));
  
  getIt.registerLazySingleton<NotesLocalRepository>(()=> NotesLocalRepositoryImpl(notesDbServise: getIt()));

  getIt.registerFactory(()=>NotesInteractor(notesLocalRepository: getIt()));
  
  getIt.registerFactoryParam((int? param1,param2)=> NoteCubit(id: param1, notesInteractor: getIt()));
}