import 'package:flutter/cupertino.dart';
import '../models/onboarding_info.dart';
import 'package:get/state_manager.dart';
import 'package:get/utils.dart';

class OnboardingController extends GetxController{
  var selectedPageIndex = 0.obs;
  var pageController = PageController();
  bool get isLastPage => selectedPageIndex.value == onboardingPages.length - 1;
  forwardAction(){
    if(isLastPage){
      // go to home page
    }
    else
    pageController.nextPage(duration: 300.milliseconds, curve: Curves.ease);
  }
  List<OnboardingInfo> onboardingPages = [
    OnboardingInfo('imageAsset', 'Order Your Food', 'Now you can order food anytime right from your mobile .'),
    OnboardingInfo('imageAsset', 'Cooking Safe Food', 'Now we are maintain safty and we keep clean while making food.'),
    OnboardingInfo('imageAsset', 'Quick Delivery', 'Now you can order food anytime right from your mobile .')
  ];
}