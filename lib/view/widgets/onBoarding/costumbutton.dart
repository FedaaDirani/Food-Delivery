
import 'package:flutter/material.dart';
import 'package:food_delivery/controller/onboardingcontroller.dart';
import 'package:food_delivery/core/constant/app_colors.dart';
import 'package:get/get.dart';

class CostumButtonOnBoarding extends GetView<OnBoardingControllerImp> {
  const CostumButtonOnBoarding({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: ShapeDecoration(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15),
          ),
      ),
      margin: const EdgeInsets.only(bottom: 30),
      height: 40,
      child: MaterialButton(
        padding: const EdgeInsets.symmetric(horizontal: 100, vertical: 2),
        color: AppColors.mainColor,
        onPressed: (){
          controller.next();
        },
        child: const Text(
          'Next',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
