import 'package:flutter/material.dart';

import '../../../core/animation/page_transition.dart';
import '../../../core/animation/slide_in_animation.dart';
import '../../../core/constants/constant.dart';
import '../onbaording/onbaording.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState() {
    super.initState();
    _popOffStackScreen();
  }

  Future _popOffStackScreen() {
    return Future.delayed(
      const Duration(seconds: 5),
      () {
        Navigator.of(context).pushReplacement(
          PreviewSlideRoute(preview: const OnboardingScreen(), duration: 950),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          ScaleOut(animationChild: [
            Hero(
              tag: "logo",
              child: Center(
                child: Image.asset(
                  AssetsConstants.appLogo,
                ),
              ),
            ),
          ]),
        ],
      ),
    );
  }
}
