import 'package:get_it/get_it.dart';
import '../navigation/router.dart';

final getIt = GetIt.instance;

void initCoreModule(){
  getIt.registerSingleton(NotesRouter());
}