import 'package:beerville_cubit/app/injector.dart';
import 'package:beerville_cubit/doamin/navigation.dart';
import 'package:beerville_cubit/presentation/home/home_screen.dart';
import 'package:beerville_cubit/presentation/splash/bloc/splash_cubit.dart';
import 'package:beerville_cubit/presentation/splash/splash_logic.dart';
import 'package:beerville_cubit/resources/beer_strings.dart';
import 'package:beerville_cubit/resources/beer_text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SplashWidget extends StatelessWidget {
  SplashWidget({Key? key}) : super(key: key);
  final _logic = inject<SplashLogic>();
  final _navigation = inject<Navigation>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocListener<SplashCubit, SplashState>(
        listener: (context, state) {
          if (state is SplashLoaded) {
            _logic.fuck();
            _navigation.clearPush(context, const HomeScreen());
          }
        },
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Image(image: AssetImage(BeerStrings.splashPictLink)),
              Text(BeerStrings.beerVille.toUpperCase(), style: BeerTextStyles.splashTitle),
            ],
          ),
        ),
      ),
    );
  }
}
