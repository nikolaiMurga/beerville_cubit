import 'package:beerville_cubit/presentation/splash/bloc/splash_cubit.dart';
import 'package:beerville_cubit/resources/beer_strings.dart';
import 'package:beerville_cubit/resources/beer_text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SplashWidget extends StatelessWidget {
  const SplashWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocBuilder<SplashCubit, SplashState>(
        builder: (context, state) {
          if (state is SplashLoading) {
            return Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Image(image: AssetImage(BeerStrings.splashPictLink)),
                  Text(BeerStrings.beerVille.toUpperCase(), style: BeerTextStyles.splashTitle),
                ],
              ),
            );
          }
          if (state is SplashLoaded) {
            // TODO navigation to main page
          }
          return const Center(child: Text(BeerStrings.noData));
        },
      ),
    );
  }
}
