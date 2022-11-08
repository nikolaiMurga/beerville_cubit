import 'package:flutter/material.dart';

class GlobalVariables {
  static Size size = const Size(0, 0);
  static const _defaultHeight = 812.0;
  static const _defaultWight = 375.0;
  static double heightCof = size.height / _defaultHeight;
  static double wightCof = size.width / _defaultWight;
}
