import 'package:flutter/material.dart';
import 'package:todo_app/Helpers/AppConstants/AppConstants.dart';
import 'package:todo_app/Helpers/ResponsiveUI.dart';
import 'package:todo_app/Screens/SplashScreen/SplashScreen.dart';

class App extends StatelessWidget {
  const App({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    ResponsiveUI.baseHeight = AppConstants.baseHeight;
    ResponsiveUI.baseWidth = AppConstants.baseWidth;
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
    );
  }
}
