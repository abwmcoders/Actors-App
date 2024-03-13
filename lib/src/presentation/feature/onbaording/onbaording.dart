import 'package:flutter/material.dart';

import 'package:tasked/src/shared/shared.dart';
import 'widgets/onboarding_widget.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Palette.secondaryColor,
      body: SafeArea(
        child: Column(
          children: [
            ActorAreaWidget(),
            BaseWidget(),
          ],
        ),
      ),
    );
  }
}
