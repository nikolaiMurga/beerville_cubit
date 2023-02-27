import 'package:beerville_cubit/app/injector.dart';
import 'package:beerville_cubit/domain/navigation.dart';
import 'package:beerville_cubit/presentation/home/home_screen.dart';
import 'package:beerville_cubit/presentation/splash/bloc/splash_cubit.dart';
import 'package:beerville_cubit/resources/beer_colors.dart';
import 'package:beerville_cubit/resources/beer_strings.dart';
import 'package:beerville_cubit/resources/beer_text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SplashWidget extends StatelessWidget {
  final _navigation = inject<Navigation>();

  SplashWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: BeerColors.white,
      body: BlocListener<SplashCubit, SplashState>(
        listener: (context, state) {
          if (state is SplashLoaded) _navigation.clearPush(context, const HomeScreen());
        },
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Image(image: AssetImage(BeerStrings.splashPictLink)),
                Text(BeerStrings.beerVille.toUpperCase(), style: BeerTextStyles.splashTitle),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
