import 'package:beerville_cubit/resources/beer_colors.dart';
import 'package:beerville_cubit/resources/fonts/fonts.dart';
import 'package:flutter/material.dart';

class BeerTextStyles {
  static const mainText = TextStyle(
    color: BeerColors.black,
    fontSize: 20,
    fontWeight: FontWeight.w700,
    fontFamily: Fonts.mont,
  );

  static const params = TextStyle(
    color: BeerColors.black,
    fontSize: 15,
    fontWeight: FontWeight.w500,
  );

  static const errorText = TextStyle(
    color: BeerColors.white,
    fontSize: 18,
  );

  static const splashTitle = TextStyle(
    color: BeerColors.black,
    fontSize: 45,
    fontWeight: FontWeight.w900,
    fontFamily: Fonts.mont,
  );

  static const appBarMainTitle = TextStyle(
    color: BeerColors.white,
    fontSize: 35,
    fontWeight: FontWeight.w900,
    fontFamily: Fonts.mont,
  );

  static const appBarTitle = TextStyle(
    color: BeerColors.white,
    fontSize: 20,
    fontWeight: FontWeight.w700,
    fontFamily: Fonts.mont,
  );

  static const subAppBarText = TextStyle(
    color: BeerColors.white,
    fontSize: 16,
    fontWeight: FontWeight.w500,
    fontFamily: Fonts.mont,
  );

  static const mainButtonText = TextStyle(
    color: BeerColors.white,
    fontSize: 16,
    fontWeight: FontWeight.w700,
    fontFamily: Fonts.mont,
  );

  static const randomBeer = TextStyle(
    color: BeerColors.black,
    fontSize: 16,
    fontWeight: FontWeight.w700,
    fontFamily: Fonts.mont,
  );

  static const bottomLabel = TextStyle(
    color: BeerColors.black,
    fontSize: 14,
    fontWeight: FontWeight.w400,
    fontFamily: Fonts.mont,
  );
}
