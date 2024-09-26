// ignore_for_file: unnecessary_this

import 'package:mobx/mobx.dart';
import 'package:todo_app/BOs/OnboardingScreenBO/OnboardingScreenBO.dart';

part 'OnboardingScreenModel.g.dart';

class OnboardingScreenModel = _OnboardingScreenModelBase
    with _$OnboardingScreenModel;

abstract class _OnboardingScreenModelBase with Store {
  @observable
  List<OnboardingScreenBO>? onboardingList;

  @observable
  int? currentIndex;

  @action
  void setOnboardingListValue(
      {required List<OnboardingScreenBO> onboardingList}) {
    this.onboardingList = onboardingList;
  }

  @action
  void setCurrentIndexValue({required int index}) {
    this.currentIndex = index;
  }
}
