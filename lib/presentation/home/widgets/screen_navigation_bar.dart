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

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => inject<HomeCubit>(),
      child: BlocBuilder<HomeCubit, HomeState>(
        builder: (context, state) => SizedBox(
          height: (83 * GlobalVariables.heightCof).roundToDouble(),
          child: BottomNavigationBar(
            items: const [
              BottomNavigationBarItem(
                icon:  Icon(Icons.circle),
                label: BeerStrings.beerList,
              ),
              BottomNavigationBarItem(
                icon:  Icon(Icons.circle),
                label: BeerStrings.search,
              ),
            ],
            selectedItemColor: BeerColors.black,
            unselectedItemColor: BeerColors.unselected,
            showUnselectedLabels: true,
            showSelectedLabels: true,
            iconSize: 28,
            selectedLabelStyle: BeerTextStyles.bottomLabel,
            unselectedLabelStyle: BeerTextStyles.bottomLabel,
            type: BottomNavigationBarType.fixed,
          ),
        ),
      ),
    );
  }
}
