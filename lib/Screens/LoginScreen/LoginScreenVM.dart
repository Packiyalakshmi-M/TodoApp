import 'package:flutter/material.dart';
import 'package:todo_app/Helpers/Utilities/Utilities.dart';

class LoginScreenVM {
  void navigateBack(BuildContext context) {
    try {
      Navigator.pop(context);
    } catch (ex) {
      ex.logException();
    }
  }
}
