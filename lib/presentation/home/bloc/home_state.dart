part of 'home_cubit.dart';

abstract class HomeState {
  abstract Widget page;
}

class BeersListState extends HomeState {
  @override
  Widget page = const BeerListScreen();
}

