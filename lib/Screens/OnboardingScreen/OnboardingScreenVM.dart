import 'package:flutter/material.dart';
import 'package:todo_app/BOs/OnboardingScreenBO/OnboardingScreenBO.dart';
import 'package:todo_app/Helpers/Utilities/Utilities.dart';
import 'package:todo_app/Screens/LandingScreen/LandingScreen.dart';
import 'package:todo_app/Screens/OnboardingScreen/OnboardingScreenModel.dart';

class OnboardingScreenVM extends OnboardingScreenModel {
  OnboardingScreenVM() {
    setCurrentIndexValue(index: 0);
    setOnboardingListValue(onboardingList: [
      OnboardingScreenBO(
        assetPath: 'lib/Resources/Images/OnboardingImageOne.svg',
        title: 'Manage your tasks',
        description:
            'You can easily manage all of your daily tasks in DoMe for free',
      ),
      OnboardingScreenBO(
        assetPath: 'lib/Resources/Images/OnboardingImageTwo.svg',
        title: 'Create daily routine',
        description:
            'In Uptodo  you can create your personalized routine to stay productive',
      ),
      OnboardingScreenBO(
        assetPath: 'lib/Resources/Images/OnboardingImageThree.svg',
        title: 'Organize your tasks',
        description:
            'You can organize your daily tasks by adding your tasks into separate categories',
      ),
    ]);
  }

  void updateCurrentIndex(int index) {
    setCurrentIndexValue(index: index);
  }

  void navigateToLandingScreen(BuildContext context) {
    try {
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(
          builder: (context) => const LandingScreen(),
        ),
      );
    } catch (ex) {
      ex.logException();
    }
  }
}
