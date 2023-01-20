import 'package:beerville_cubit/app/injector.dart';
import 'package:beerville_cubit/presentation/home/bloc/home_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ScreenContainer extends StatelessWidget {
  const ScreenContainer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) =>
      BlocProvider(
        create: (context) => inject<HomeCubit>(),
        child: BlocBuilder<HomeCubit, HomeState>(builder: (context, state) => state.page),
      );
}
