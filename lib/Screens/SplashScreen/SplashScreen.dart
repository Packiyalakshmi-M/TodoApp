import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:todo_app/Helpers/AppConstants/AppConstants.dart';
import 'package:todo_app/Helpers/ResponsiveUI.dart';
import 'package:todo_app/Resources/AppColors/AppColors.dart';
import 'package:todo_app/Screens/SplashScreen/SplashScreenVM.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  final SplashScreenVM _splashScreenVM = SplashScreenVM();
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 2), () {
      _splashScreenVM.navigateToOnboardingScreen(context);
    });
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
        body: SizedBox(
          height: ResponsiveUI.h(AppConstants.baseHeight, context),
          width: ResponsiveUI.w(AppConstants.baseWidth, context),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SvgPicture.asset(
                'lib/Resources/Images/TodoAppLogo.svg',
                height: ResponsiveUI.h(113, context),
                width: ResponsiveUI.w(113, context),
              ),
              Text(
                'UpTodo',
                style: TextStyle(
                    color: AppColors.splashText,
                    fontSize: ResponsiveUI.sp(40, context)),
              )
            ],
          ),
        ),
      ),
    );
  }
}
