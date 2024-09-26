import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:todo_app/Helpers/AppConstants/AppConstants.dart';
import 'package:todo_app/Helpers/ResponsiveUI.dart';
import 'package:todo_app/Resources/AppColors/AppColors.dart';
import 'package:todo_app/Screens/LandingScreen/LandingScreenVM.dart';

class LandingScreen extends StatefulWidget {
  const LandingScreen({super.key});

  @override
  State<LandingScreen> createState() => _LandingScreenState();
}

class _LandingScreenState extends State<LandingScreen> {
  final LandingScreenVM _landingScreenVM = LandingScreenVM();
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
          appBar: PreferredSize(
              preferredSize: Size.fromHeight(ResponsiveUI.h(37, context)),
              child: Padding(
                padding: const EdgeInsets.only(
                  left: 24.0,
                  top: 57.0,
                  right: 24.0,
                  bottom: 0,
                ),
                child: Align(
                  alignment: Alignment.topLeft,
                  child: IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.arrow_back_ios,
                      color: AppColors.appPrimaryTextColor,
                      size: ResponsiveUI.sp(24, context),
                    ),
                  ),
                ),
              )),
          backgroundColor: AppColors.appBackground,
          body: Padding(
            padding: EdgeInsets.only(
              top: ResponsiveUI.h(58.0, context),
              left: ResponsiveUI.w(24.0, context),
              right: ResponsiveUI.w(24.0, context),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  'Welcome to UpTodo',
                  style: TextStyle(
                    color: AppColors.appPrimaryTextColor,
                    fontSize: ResponsiveUI.sp(32, context),
                    fontFamily: 'LatoBold',
                  ),
                ),
                SizedBox(
                  height: ResponsiveUI.h(26, context),
                  width: ResponsiveUI.w(AppConstants.baseWidth, context),
                ),
                Text(
                  'Please login to your account or create new account to continue',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: AppColors.appPrimaryTextColor.withOpacity(0.87),
                    fontSize: ResponsiveUI.sp(16, context),
                    fontFamily: 'LatoRegular',
                  ),
                ),
                Spacer(),
                SizedBox(
                  height: ResponsiveUI.h(48, context),
                  width: MediaQuery.of(context).size.width,
                  child: ElevatedButton(
                    onPressed: () {
                      _landingScreenVM.navigateToLoginScreen(context);
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: AppColors.buttonPrimaryColor,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(4),
                      ),
                    ),
                    child: Text(
                      'LOGIN',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: AppColors.appPrimaryTextColor,
                        fontSize: ResponsiveUI.sp(16, context),
                        fontFamily: 'LatoRegular',
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: ResponsiveUI.h(28, context),
                  width: ResponsiveUI.w(AppConstants.baseWidth, context),
                ),
                SizedBox(
                  height: ResponsiveUI.h(48, context),
                  width: MediaQuery.of(context).size.width,
                  child: ElevatedButton(
                    onPressed: () {
                      _landingScreenVM.navigateToCreateAccountScreen(context);
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.transparent,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(4),
                          side: BorderSide(
                            color: AppColors.buttonPrimaryColor,
                          )),
                    ),
                    child: Text(
                      'CREATE ACCOUNT',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: AppColors.appPrimaryTextColor,
                        fontSize: ResponsiveUI.sp(16, context),
                        fontFamily: 'LatoRegular',
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: ResponsiveUI.h(54, context),
                  width: ResponsiveUI.w(AppConstants.baseWidth, context),
                ),
              ],
            ),
          )),
    );
  }
}
