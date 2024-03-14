
import 'package:flutter/material.dart';
import 'package:food_delivery/controller/onboardingcontroller.dart';
import 'package:food_delivery/core/constant/app_colors.dart';
import 'package:food_delivery/data/datasource/static.dart';
import 'package:get/get.dart';

class CustomDotControllerOnBoarding extends StatelessWidget {
  const CustomDotControllerOnBoarding({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<OnBoardingControllerImp>(builder: (controller) =>
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ...List.generate(
              onBoardingList.length, (index) => AnimatedContainer(
              margin: const EdgeInsets.only(right: 5),
              duration: const Duration(microseconds: 500),
              width: controller.currentPage == index ? 20 : 5,
              height: 6,
              decoration: BoxDecoration(
                color: AppColors.mainColor,
                borderRadius: BorderRadius.circular(10),
              ),),),
          ],
        ),
    );
  }
}
