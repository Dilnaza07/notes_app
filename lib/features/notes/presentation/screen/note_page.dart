import 'package:flutter/material.dart';

import '../../../../generated/l10n.dart';

class NotePage extends StatelessWidget {
  const NotePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(S.of(context).note_create),
        actions: [IconButton(onPressed: (){}, icon: const Icon(Icons.save))],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: TextField(
          decoration: InputDecoration(
            hintText: S.of(context).enter_text,
            border: OutlineInputBorder(borderSide: BorderSide.none,),

          ),
          maxLines: null,
        ),
      ),
    );
  }
}
