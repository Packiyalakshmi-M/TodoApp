import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/svg.dart';
import 'package:todo_app/Helpers/AppConstants/AppConstants.dart';
import 'package:todo_app/Helpers/ResponsiveUI.dart';
import 'package:todo_app/Resources/AppColors/AppColors.dart';
import 'package:todo_app/Screens/CreateAccountScreen/CreateAccountScreenVM.dart';

class CreateAccountScreen extends StatefulWidget {
  const CreateAccountScreen({super.key});

  @override
  State<CreateAccountScreen> createState() => _CreateAccountScreenState();
}

class _CreateAccountScreenState extends State<CreateAccountScreen> {
  final CreateAccountScreenVM _createAccountScreenVM = CreateAccountScreenVM();
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
                    onPressed: () {
                      _createAccountScreenVM.navigateBack(context);
                    },
                    icon: Icon(
                      Icons.arrow_back_ios,
                      color: AppColors.appPrimaryTextColor,
                      size: ResponsiveUI.sp(24, context),
                    ),
                  ),
                ),
              )),
          backgroundColor: AppColors.appBackground,
          body: SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.only(
                top: ResponsiveUI.h(55.0, context),
                left: ResponsiveUI.w(24.0, context),
                right: ResponsiveUI.w(24.0, context),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Register',
                    style: TextStyle(
                      color: AppColors.appPrimaryTextColor,
                      fontSize: ResponsiveUI.sp(32, context),
                      fontFamily: 'LatoBold',
                    ),
                  ),
                  SizedBox(
                    height: ResponsiveUI.h(50, context),
                    width: ResponsiveUI.w(AppConstants.baseWidth, context),
                  ),
                  Text(
                    'Email',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: AppColors.appPrimaryTextColor.withOpacity(0.87),
                      fontSize: ResponsiveUI.sp(16, context),
                      fontFamily: 'LatoRegular',
                    ),
                  ),
                  SizedBox(
                    height: ResponsiveUI.h(8, context),
                    width: ResponsiveUI.w(AppConstants.baseWidth, context),
                  ),
                  TextFormField(
                    style: TextStyle(
                      color: AppColors.appPrimaryTextColor.withOpacity(0.87),
                      fontSize: ResponsiveUI.sp(16, context),
                      fontFamily: 'LatoRegular',
                    ),
                    keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(
                      labelText: 'Enter your email',
                      floatingLabelBehavior: FloatingLabelBehavior.never,
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                            width: 1, color: AppColors.textFieldBorderColor),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                            width: 1, color: AppColors.textFieldBorderColor),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: ResponsiveUI.h(25, context),
                    width: ResponsiveUI.w(AppConstants.baseWidth, context),
                  ),
                  Text(
                    'Password',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: AppColors.appPrimaryTextColor.withOpacity(0.87),
                      fontSize: ResponsiveUI.sp(16, context),
                      fontFamily: 'LatoRegular',
                    ),
                  ),
                  SizedBox(
                    height: ResponsiveUI.h(8, context),
                    width: ResponsiveUI.w(AppConstants.baseWidth, context),
                  ),
                  TextFormField(
                    style: TextStyle(
                      color: AppColors.appPrimaryTextColor.withOpacity(0.87),
                      fontSize: ResponsiveUI.sp(16, context),
                      fontFamily: 'LatoRegular',
                    ),
                    decoration: InputDecoration(
                      labelText: 'Enter your password',
                      floatingLabelBehavior: FloatingLabelBehavior.never,
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                            width: 1, color: AppColors.textFieldBorderColor),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                            width: 1, color: AppColors.textFieldBorderColor),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: ResponsiveUI.h(25, context),
                    width: ResponsiveUI.w(AppConstants.baseWidth, context),
                  ),
                  Text(
                    'Confirm Password',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: AppColors.appPrimaryTextColor.withOpacity(0.87),
                      fontSize: ResponsiveUI.sp(16, context),
                      fontFamily: 'LatoRegular',
                    ),
                  ),
                  SizedBox(
                    height: ResponsiveUI.h(8, context),
                    width: ResponsiveUI.w(AppConstants.baseWidth, context),
                  ),
                  TextFormField(
                    style: TextStyle(
                      color: AppColors.appPrimaryTextColor.withOpacity(0.87),
                      fontSize: ResponsiveUI.sp(16, context),
                      fontFamily: 'LatoRegular',
                    ),
                    decoration: InputDecoration(
                      labelText: 'Enter your password again',
                      floatingLabelBehavior: FloatingLabelBehavior.never,
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                            width: 1, color: AppColors.textFieldBorderColor),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                            width: 1, color: AppColors.textFieldBorderColor),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: ResponsiveUI.h(66, context),
                    width: ResponsiveUI.w(AppConstants.baseWidth, context),
                  ),
                  SizedBox(
                    height: ResponsiveUI.h(48, context),
                    width: MediaQuery.of(context).size.width,
                    child: ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        backgroundColor: AppColors.buttonPrimaryColor,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(4),
                        ),
                      ),
                      child: Text(
                        'Register',
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
                    height: ResponsiveUI.h(31, context),
                    width: ResponsiveUI.w(AppConstants.baseWidth, context),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SizedBox(
                        width: ResponsiveUI.w(152, context),
                        child: Divider(
                          height: ResponsiveUI.h(1, context),
                          color: AppColors.textFieldBorderColor,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 2, right: 2),
                        child: Text(
                          'Or',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: AppColors.textFieldBorderColor,
                            fontSize: ResponsiveUI.sp(16, context),
                            fontFamily: 'LatoRegular',
                          ),
                        ),
                      ),
                      SizedBox(
                        width: ResponsiveUI.w(151, context),
                        child: Divider(
                          height: ResponsiveUI.h(1, context),
                          color: AppColors.textFieldBorderColor,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: ResponsiveUI.h(29, context),
                    width: ResponsiveUI.w(AppConstants.baseWidth, context),
                  ),
                  SizedBox(
                    height: ResponsiveUI.h(48, context),
                    width: MediaQuery.of(context).size.width,
                    child: ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.transparent,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(4),
                            side: BorderSide(
                              color: AppColors.buttonPrimaryColor,
                            )),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          SvgPicture.asset(
                            'lib/Resources/Images/google.svg',
                            width: ResponsiveUI.w(24, context),
                            height: ResponsiveUI.h(24, context),
                          ),
                          SizedBox(
                            width: ResponsiveUI.w(10, context),
                          ),
                          Text(
                            'Register with Google',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: AppColors.appPrimaryTextColor,
                              fontSize: ResponsiveUI.sp(16, context),
                              fontFamily: 'LatoRegular',
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: ResponsiveUI.h(20, context),
                    width: ResponsiveUI.w(AppConstants.baseWidth, context),
                  ),
                  SizedBox(
                    height: ResponsiveUI.h(48, context),
                    width: MediaQuery.of(context).size.width,
                    child: ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.transparent,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(4),
                            side: BorderSide(
                              color: AppColors.buttonPrimaryColor,
                            )),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          SvgPicture.asset(
                            'lib/Resources/Images/apple.svg',
                            width: ResponsiveUI.w(24, context),
                            height: ResponsiveUI.h(24, context),
                          ),
                          SizedBox(
                            width: ResponsiveUI.w(10, context),
                          ),
                          Text(
                            'Register with Apple',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: AppColors.appPrimaryTextColor,
                              fontSize: ResponsiveUI.sp(16, context),
                              fontFamily: 'LatoRegular',
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: ResponsiveUI.h(46, context),
                    width: ResponsiveUI.w(AppConstants.baseWidth, context),
                  ),
                  Align(
                    alignment: Alignment.center,
                    child: RichText(
                      text: TextSpan(
                          text: 'Already have an account?',
                          style: TextStyle(
                              color: AppColors.textFieldBorderColor,
                              fontSize: 12),
                          children: [
                            TextSpan(
                                text: ' Login',
                                style: TextStyle(
                                    color: AppColors.appPrimaryTextColor,
                                    fontSize: 12),
                                recognizer: TapGestureRecognizer()
                                  ..onTap = () {
                                    // navigate to desired screen
                                  })
                          ]),
                    ),
                  ),
                ],
              ),
            ),
          )),
    );
  }
}
