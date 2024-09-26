// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'OnboardingScreenModel.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$OnboardingScreenModel on _OnboardingScreenModelBase, Store {
  late final _$onboardingListAtom =
      Atom(name: '_OnboardingScreenModelBase.onboardingList', context: context);

  @override
  List<OnboardingScreenBO>? get onboardingList {
    _$onboardingListAtom.reportRead();
    return super.onboardingList;
  }

  @override
  set onboardingList(List<OnboardingScreenBO>? value) {
    _$onboardingListAtom.reportWrite(value, super.onboardingList, () {
      super.onboardingList = value;
    });
  }

  late final _$currentIndexAtom =
      Atom(name: '_OnboardingScreenModelBase.currentIndex', context: context);

  @override
  int? get currentIndex {
    _$currentIndexAtom.reportRead();
    return super.currentIndex;
  }

  @override
  set currentIndex(int? value) {
    _$currentIndexAtom.reportWrite(value, super.currentIndex, () {
      super.currentIndex = value;
    });
  }

  late final _$_OnboardingScreenModelBaseActionController =
      ActionController(name: '_OnboardingScreenModelBase', context: context);

  @override
  void setOnboardingListValue(
      {required List<OnboardingScreenBO> onboardingList}) {
    final _$actionInfo = _$_OnboardingScreenModelBaseActionController
        .startAction(name: '_OnboardingScreenModelBase.setOnboardingListValue');
    try {
      return super.setOnboardingListValue(onboardingList: onboardingList);
    } finally {
      _$_OnboardingScreenModelBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setCurrentIndexValue({required int index}) {
    final _$actionInfo = _$_OnboardingScreenModelBaseActionController
        .startAction(name: '_OnboardingScreenModelBase.setCurrentIndexValue');
    try {
      return super.setCurrentIndexValue(index: index);
    } finally {
      _$_OnboardingScreenModelBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
onboardingList: ${onboardingList},
currentIndex: ${currentIndex}
    ''';
  }
}
