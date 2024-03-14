
import 'package:flutter/material.dart';
import 'package:food_delivery/controller/onboardingcontroller.dart';
import 'package:food_delivery/core/constant/app_colors.dart';
import 'package:food_delivery/view/widgets/onBoarding/costumbutton.dart';
import 'package:food_delivery/view/widgets/onBoarding/customslider.dart';
import 'package:food_delivery/view/widgets/onBoarding/dotcontroller.dart';
import 'package:get/get.dart';

class OnBoarding extends StatelessWidget {
  const OnBoarding({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(OnBoardingControllerImp());
    return const Scaffold(
      backgroundColor: AppColors.whiteColor,
      body: SafeArea(
        child: Column(
          children: [
             Expanded(
              flex: 3,
              child: CustomSliderOnBoarding(),
            ),
             Expanded(
              flex: 1,
                child: Column(
              children: [
                CustomDotControllerOnBoarding(),
                 Spacer(
                  flex: 2,
                ),
                 CostumButtonOnBoarding(),
              ],
            )),
          ],
        ),
      ),
    );
  }
}
