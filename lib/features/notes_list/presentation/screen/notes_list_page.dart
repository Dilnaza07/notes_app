import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:notes_app/core/navigation/routers/notes_list_route.dart';

class NotesListPage extends StatelessWidget {
  const NotesListPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('NOTES LIST'),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          context.push("${NotesListRoute.name}notRoute");
        },

      ),
    );
  }
}
