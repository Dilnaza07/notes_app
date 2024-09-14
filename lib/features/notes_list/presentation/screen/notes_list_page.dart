import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import '../../../../core/di/dependency_injection.dart';
import '../../../../core/navigation/routers/note_route.dart';
import '../bloc/notes_list_bloc.dart';

class NotesListPage extends StatelessWidget {
  const NotesListPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<NotesListBloc>()..add(NotesDataLoaded()),
      child: Scaffold(
        appBar: AppBar(
          title: Text('NOTES LIST'),
        ),
        body: _Body(),
        floatingActionButton: _CreateButton(),
      ),
    );
  }
}

class _CreateButton extends StatelessWidget {
  const _CreateButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final notesListBloc = context.read<NotesListBloc>();
    return FloatingActionButton(
      child: Icon(Icons.note_add_outlined),
      onPressed: (){
        context.push('/note').then((value){
          if(value==true){
            notesListBloc.add(NotesDataLoaded());
          }
        });
      },
    );
  }
}

class _Body extends StatelessWidget {
  const _Body({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NotesListBloc, NotesListState>(builder: (context, state) {
      final notes = state.notes;
      return ListView.builder(
        itemBuilder: (BuildContext context, int index) {
          final note = notes[index];
          return ListTile(
            leading: Icon(Icons.notes_outlined),
            title: Text(
              "${notes[index].title} $index",
              style: TextStyle(fontSize: 20),
            ),
            subtitle: Text(note.content),
            // onTap: ()=> context.push(),
          );
        },
        itemCount: notes.length,
      );
    });
  }
}
