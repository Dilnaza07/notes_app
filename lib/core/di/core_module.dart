import '../navigation/router.dart';
import 'dependency_injection.dart';



void initCoreModule(){
  getIt.registerSingleton(NotesRouter());
}