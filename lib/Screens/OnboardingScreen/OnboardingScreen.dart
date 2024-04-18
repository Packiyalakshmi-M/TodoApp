import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:todo_app/Resources/AppColors/AppColors.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion(
      value: const SystemUiOverlayStyle(
          statusBarColor: Colors.transparent,
          statusBarIconBrightness: Brightness.dark,
          statusBarBrightness: Brightness.dark),
      child: Scaffold(
        backgroundColor: AppColors.appBackground,
        body: Center(
            child: Text(
          'Onboarding Screen',
          style: TextStyle(color: AppColors.splashText),
        )),
      ),
    );
  }
}
