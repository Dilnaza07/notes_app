import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:notes_app/features/home/presentation/bloc/home_cubit.dart';

import '../../../../core/ui/widgets/notes_bottom_nav_bar.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key, required this.navigationShell});

  final StatefulNavigationShell navigationShell;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => HomeCubit(),
      child: Scaffold(
        // appBar: AppBar(
        // title: Text('HOME'),
        // ),
        body: navigationShell,
        bottomNavigationBar: NotesBottomNavigationBar(navigationShell: navigationShell),
      ),
    );
  }
}
