
import 'package:notes_app/core/navigation/routers/notes_list_route.dart';

class NoteRoute{

 // static const String name = '/note';
  static const String idKeyArg = 'id';
  static const String name = 'note';


  static String getRouteWithArgs(int id){
    return '${NotesListRoute.name}$name?$idKeyArg=$id';
    //$id'; //identical to => if (id == 5) then '/note?id=5'
  }
}