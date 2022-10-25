import 'package:beerville_cubit/app/locator.dart';
import 'package:beerville_cubit/presentation/splash/bloc/splash_cubit.dart';
import 'package:beerville_cubit/presentation/splash/splash_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(create: (_) => locator<SplashCubit>(), child: SplashWidget());
  }
}
