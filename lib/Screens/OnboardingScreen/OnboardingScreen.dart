import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_svg/svg.dart';
import 'package:todo_app/Helpers/AppConstants/AppConstants.dart';
import 'package:todo_app/Helpers/ResponsiveUI.dart';
import 'package:todo_app/Resources/AppColors/AppColors.dart';
import 'package:todo_app/Screens/OnboardingScreen/OnboardingScreenVM.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  final OnboardingScreenVM _onboardingScreenVM = OnboardingScreenVM();
  final PageController _pageViewController = PageController();
  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
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
        body: Observer(
          builder: ((context) {
            return Padding(
              padding: EdgeInsets.only(
                left: ResponsiveUI.w(24, context),
                right: ResponsiveUI.w(24, context),
              ),
              child: Column(
                children: [
                  SizedBox(
                    height: ResponsiveUI.h(
                      14 + MediaQuery.of(context).padding.top,
                      context,
                    ),
                    width: ResponsiveUI.w(AppConstants.baseWidth, context),
                  ),
                  Align(
                    alignment: Alignment.topLeft,
                    child: GestureDetector(
                      onTap: () {
                        _pageViewController.jumpToPage(
                            _onboardingScreenVM.onboardingList!.length - 1);
                      },
                      child: Text(
                        'SKIP',
                        textAlign: TextAlign.start,
                        style: TextStyle(
                          color:
                              AppColors.appPrimaryTextColor.withOpacity(0.44),
                          fontSize: ResponsiveUI.sp(16, context),
                          fontFamily: 'LatoRegular',
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: ResponsiveUI.h(2, context),
                    width: ResponsiveUI.w(AppConstants.baseWidth, context),
                  ),
                  Expanded(
                    child: PageView.builder(
                      itemCount: _onboardingScreenVM.onboardingList!.length,
                      controller: _pageViewController,
                      onPageChanged: (index) {
                        _onboardingScreenVM.updateCurrentIndex(index);
                      },
                      itemBuilder: (context, index) {
                        return Column(
                          children: [
                            SvgPicture.asset(
                              _onboardingScreenVM
                                  .onboardingList![index].assetPath,
                              width: ResponsiveUI.w(213, context),
                              height: ResponsiveUI.h(251, context),
                            ),
                            SizedBox(
                              height: ResponsiveUI.h(51.72, context),
                              width: ResponsiveUI.w(
                                  AppConstants.baseWidth, context),
                            ),
                            Wrap(
                              spacing: 8,
                              alignment: WrapAlignment.center,
                              children: List.generate(
                                  _onboardingScreenVM.onboardingList!.length,
                                  (index) {
                                return Container(
                                  height: ResponsiveUI.h(4, context),
                                  width: ResponsiveUI.w(26.28, context),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(56),
                                    color: _onboardingScreenVM.currentIndex ==
                                            index
                                        ? AppColors.appPrimaryTextColor
                                            .withOpacity(0.87)
                                        : AppColors.appSecondaryTextColor,
                                  ),
                                );
                              }),
                            ),
                            SizedBox(
                              height: ResponsiveUI.h(50.72, context),
                              width: ResponsiveUI.w(
                                  AppConstants.baseWidth, context),
                            ),
                            Text(
                              _onboardingScreenVM.onboardingList![index].title,
                              style: TextStyle(
                                color: AppColors.appPrimaryTextColor,
                                fontSize: ResponsiveUI.sp(32, context),
                                fontFamily: 'LatoBold',
                              ),
                            ),
                            SizedBox(
                              height: ResponsiveUI.h(42, context),
                              width: ResponsiveUI.w(
                                  AppConstants.baseWidth, context),
                            ),
                            Text(
                              _onboardingScreenVM
                                  .onboardingList![index].description,
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: AppColors.appPrimaryTextColor
                                    .withOpacity(0.87),
                                fontSize: ResponsiveUI.sp(16, context),
                                fontFamily: 'LatoRegular',
                              ),
                            ),
                          ],
                        );
                      },
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.only(
                      top: ResponsiveUI.h(107, context),
                      bottom: ResponsiveUI.h(62, context),
                    ),
                    // decoration: BoxDecoration(color: Colors.amber),
                    height: ResponsiveUI.h(217, context),
                    width: ResponsiveUI.w(AppConstants.baseWidth, context),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        GestureDetector(
                          onTap: () {
                            _pageViewController.jumpToPage(
                                _onboardingScreenVM.currentIndex! - 1);
                          },
                          child: Text(
                            'BACK',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: AppColors.appPrimaryTextColor
                                  .withOpacity(0.44),
                              fontSize: ResponsiveUI.sp(16, context),
                              fontFamily: 'LatoRegular',
                            ),
                          ),
                        ),
                        SizedBox(
                          height: ResponsiveUI.h(48, context),
                          // width: ResponsiveUI.w(90, context),
                          child: ElevatedButton(
                            onPressed: () {
                              if (_onboardingScreenVM.currentIndex! <
                                  _onboardingScreenVM.onboardingList!.length -
                                      1) {
                                _pageViewController.jumpToPage(
                                    _onboardingScreenVM.currentIndex! + 1);
                              } else {
                                _onboardingScreenVM
                                    .navigateToLandingScreen(context);
                              }
                            },
                            style: ElevatedButton.styleFrom(
                              backgroundColor: AppColors.buttonPrimaryColor,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(4),
                              ),
                            ),
                            child: Text(
                              _onboardingScreenVM.currentIndex ==
                                      _onboardingScreenVM
                                              .onboardingList!.length -
                                          1
                                  ? 'GET STARTED'
                                  : 'NEXT',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: AppColors.appPrimaryTextColor,
                                fontSize: ResponsiveUI.sp(16, context),
                                fontFamily: 'LatoRegular',
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            );
          }),
        ),
      ),
    );
  }
}
