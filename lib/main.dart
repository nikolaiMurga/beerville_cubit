import 'package:beerville_cubit/app/injector.dart';
import 'package:beerville_cubit/presentation/splash/splash_screen.dart';
import 'package:flutter/material.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await setupInjector();
  runApp(const MaterialApp(home: SplashScreen()));
}
