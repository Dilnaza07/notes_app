import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/features/home/presentation/bloc/home_state.dart';

class HomeCubit extends Cubit<HomeState> {
  HomeCubit() : super( HomeState(index: 0));

  void changeBottomNavItem(int index) => emit(HomeState(index: index));
}
