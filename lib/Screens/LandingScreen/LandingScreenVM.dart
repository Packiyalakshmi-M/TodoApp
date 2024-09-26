import 'package:flutter/material.dart';
import 'package:todo_app/Helpers/Utilities/Utilities.dart';
import 'package:todo_app/Screens/CreateAccountScreen/CreateAccountScreen.dart';
import 'package:todo_app/Screens/LoginScreen/LoginScreen.dart';

class LandingScreenVM {
  void navigateToLoginScreen(BuildContext context) {
    try {
      Navigator.of(context).push(
        MaterialPageRoute(
          builder: (context) => const LoginScreen(),
        ),
      );
    } catch (ex) {
      ex.logException();
    }
  }

  void navigateToCreateAccountScreen(BuildContext context) {
    try {
      Navigator.of(context).push(
        MaterialPageRoute(
          builder: (context) => const CreateAccountScreen(),
        ),
      );
    } catch (ex) {
      ex.logException();
    }
  }
}
