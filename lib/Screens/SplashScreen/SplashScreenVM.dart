import 'package:flutter/material.dart';
import 'package:todo_app/Helpers/Utilities/Utilities.dart';
import 'package:todo_app/Screens/OnboardingScreen/OnboardingScreen.dart';
import 'package:todo_app/Screens/SplashScreen/SplashScreenModel.dart';

class SplashScreenVM extends SplashScreenModel {
  void navigateToOnboardingScreen(BuildContext context) {
    try {
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(
          builder: (context) => const OnboardingScreen(),
        ),
      );
    } catch (ex) {
      ex.logException();
    }
  }
}
