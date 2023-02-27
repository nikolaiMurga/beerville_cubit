import 'package:beerville_cubit/app/injector.dart';
import 'package:beerville_cubit/presentation/home/bloc/home_cubit.dart';
import 'package:beerville_cubit/resources/beer_colors.dart';
import 'package:beerville_cubit/resources/beer_strings.dart';
import 'package:beerville_cubit/resources/beer_text_styles.dart';
import 'package:beerville_cubit/tools/global_variables.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ScreenNavigationBar extends StatelessWidget {
  const ScreenNavigationBar({Key? key}) : super(key: key);
  static const Icon _icon = Icon(Icons.circle);

  @override
  Widget build(BuildContext context) {
    final cubit = inject<HomeCubit>();


    return BlocProvider.value(
      value: cubit,
      child: BlocBuilder<HomeCubit, HomeState>(
        builder: (context, state) => SizedBox(
          height: (90 * GlobalVariables.heightCof).roundToDouble(),
          child: BottomNavigationBar(
            items: const [
              BottomNavigationBarItem(icon: _icon, label: BeerStrings.beerList),
              BottomNavigationBarItem(icon: _icon, label: BeerStrings.search),
              BottomNavigationBarItem(icon: _icon, label: BeerStrings.favourite),
              BottomNavigationBarItem(icon: _icon, label: BeerStrings.settings),
            ],
            currentIndex: cubit.state.toIndex(),
            selectedItemColor: BeerColors.black,
            unselectedItemColor: BeerColors.unselected,
            showUnselectedLabels: true,
            showSelectedLabels: true,
            iconSize: 28,
            selectedLabelStyle: BeerTextStyles.bottomLabel,
            unselectedLabelStyle: BeerTextStyles.bottomLabel,
            type: BottomNavigationBarType.fixed,
            onTap: (index) => cubit.changeScreen(index),
          ),
        ),
      ),
    );
  }
}
