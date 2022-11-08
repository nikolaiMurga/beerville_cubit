import 'package:beerville_cubit/presentation/home/widgets/screen_container.dart';
import 'package:beerville_cubit/presentation/home/widgets/screen_navigation_bar.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.bottomCenter,
      children:  const [
        Scaffold(
          body: ScreenContainer(),
          bottomNavigationBar: ScreenNavigationBar(),
        ),
      ],
    );
  }
}
