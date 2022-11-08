import 'package:beerville_cubit/app/injector.dart';
import 'package:beerville_cubit/presentation/splash/bloc/splash_cubit.dart';
import 'package:beerville_cubit/presentation/splash/splash_widget.dart';
import 'package:beerville_cubit/tools/global_variables.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    GlobalVariables.size = MediaQuery.of(context).size;
    return BlocProvider(
      create: (_) => inject<SplashCubit>()..setup(),
      child: SplashWidget(),
    );
  }
}
