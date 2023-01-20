part of 'home_cubit.dart';

abstract class HomeState {
  abstract Widget page;
}

class BeersListState extends HomeState {
  @override
  Widget page = const BeerListScreen();
}

class SearchState extends HomeState{
  @override
  Widget page = const SearchScreen();
}

class FavoriteState extends HomeState{
  @override
  Widget page = const FavoriteScreen();
}

class SettingsState extends HomeState{
  @override
  Widget page = const SettingsScreen();
}

