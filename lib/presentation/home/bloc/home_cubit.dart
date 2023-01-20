import 'package:beerville_cubit/presentation/beer_list/beer_list_screen.dart';
import 'package:beerville_cubit/presentation/favorite/favorite_screen.dart';
import 'package:beerville_cubit/presentation/search/search_screen.dart';
import 'package:beerville_cubit/presentation/settings/settings_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';

part 'home_state.dart';

@Singleton()
class HomeCubit extends Cubit<HomeState> {
  HomeCubit() : super(BeersListState());

  void changeScreen(int index) {
    switch (index) {
      case 0:
        emit(BeersListState());
        break;
      case 1:
        emit(SearchState());
        break;
      case 2:
        emit(FavoriteState());
        break;
      case 3:
        emit(SettingsState());
        break;
    }
  }
}

extension HomeStateToIndex on HomeState {
  int toIndex() {
    if (this is BeersListState) {
      return 0;
    }
    if (this is SearchState) {
      return 1;
    }
    if (this is FavoriteState) {
      return 2;
    }
    return 3;
  }
}
