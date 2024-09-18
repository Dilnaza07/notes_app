import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:notes_app/features/notes/presentation/cubit/note_cubit.dart';

import '../../../../core/di/dependency_injection.dart';
import '../../../../generated/l10n.dart';

class NotePage extends StatelessWidget {
  const NotePage({this.id, super.key});

  final int? id;

  @override
  Widget build(BuildContext context) {
    debugPrint('### NotePage -> id: $id');
    return BlocProvider(
      create: (context) => getIt.get<NoteCubit>(param1: id),
      child: BlocListener<NoteCubit, NoteState>(
        listener: (context, state) {
          if (state.needExit) {
            context.pop(true);
          }
        },
        child: Scaffold(
          appBar: AppBar(
            title: Text(id != null ? S.of(context).note_edit : S.of(context).note_create),
            automaticallyImplyLeading: true,
            actions: [
              _SaveIcon(),
            ],
          ),
          body: _Body(),
        ),
      ),
    );
  }
}

class _Body extends StatelessWidget {
  const _Body({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NoteCubit, NoteState>(
  builder: (context, state) {
    if(state.isLoading) return Center(child: CircularProgressIndicator());
    return Column(
      children: [
        _TitleField(),
        Divider(
          indent: 10,
          endIndent: 10,
        ),
        _ContentField()
      ],
    );
  },
);
  }
}

class _ContentField extends StatelessWidget {
  const _ContentField({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final cubit = context.read<NoteCubit>();
    return Padding(
      padding: const EdgeInsets.all(16),
      child: TextField(
        controller: cubit.contentController,
        decoration: InputDecoration(
          hintText: S.of(context).enter_text,
          border: const OutlineInputBorder(
            borderSide: BorderSide.none,
          ),
        ),
        maxLines: null,
        onChanged: cubit.updateContent,
      ),
    );
  }
}

class _TitleField extends StatelessWidget {
  const _TitleField({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final cubit = context.read<NoteCubit>();
    return Padding(
      padding: const EdgeInsets.all(16),
      child: TextField(
          controller: cubit.titleController,
          decoration: InputDecoration(
            hintText: S.of(context).enter_text,
            border: OutlineInputBorder(
              borderSide: BorderSide.none,
            ),
          ),
          maxLines: null,
          onChanged: cubit.updateTitle),
    );
  }
}

class _SaveIcon extends StatelessWidget {
  const _SaveIcon({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final cubit = context.read<NoteCubit>();
    return IconButton(
      onPressed: cubit.saveNote,
      icon: const Icon(Icons.save),
    );
  }
}
