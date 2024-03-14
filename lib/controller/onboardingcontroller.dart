
import 'package:flutter/material.dart';
import 'package:food_delivery/core/constant/routes.dart';
import 'package:food_delivery/data/datasource/static.dart';
import 'package:get/get.dart';


abstract class OnBoardingController extends GetxController {
  next();
  onPageChanged(int index) ;
}


class OnBoardingControllerImp extends OnBoardingController {
  late PageController pageController;
  int currentPage = 0;
  @override
  next() {
    currentPage++;
    if (currentPage > onBoardingList.length -1){
      Get.offAllNamed(AppRoutes.signup);
    }
    else {
      pageController.animateToPage(currentPage, duration: const Duration(microseconds: 900), curve: Curves.easeInOut);
    }
  }

  @override
  onPageChanged(int index) {
    currentPage = index;
    update();
  }

  void onInit (){
    pageController = PageController();
    super.onInit();
  }
}