
import 'package:flutter/material.dart';
import 'package:food_delivery/controller/onboardingcontroller.dart';
import 'package:food_delivery/core/constant/app_colors.dart';
import 'package:food_delivery/core/constant/app_sizes.dart';
import 'package:food_delivery/data/datasource/static.dart';
import 'package:get/get.dart';

class CustomSliderOnBoarding extends GetView<OnBoardingControllerImp> {
  const CustomSliderOnBoarding({super.key});

  @override
  Widget build(BuildContext context) {
    return PageView.builder(
      controller: controller.pageController,
      onPageChanged: (val)
      {
        controller.onPageChanged(val);
      },
      itemBuilder: (context, index) => Column(
        children: [
          const SizedBox(height: 80,),
          Image.asset(onBoardingList[index].image!,
            width: 280,
            height: 300,
            fit: BoxFit.cover,
          ),
          const SizedBox(height: 40,),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 50),
            child: Text(
              onBoardingList[index].title!,
              textAlign: TextAlign.center,
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: AppSizes.size25,
                color: AppColors.blackColor,
              ),
            ),
          ),

          Container(
            padding: const EdgeInsets.symmetric(vertical: 5,horizontal: 35),
            width: double.infinity,
            height: 75,
            alignment: Alignment.center,
            child: Text(onBoardingList[index].body! , textAlign: TextAlign.center, style: TextStyle(
              height: 2,
              color: AppColors.fontColor,
              fontWeight: FontWeight.bold,
              fontSize: AppSizes.size16,
            ),
            ),
          ),
        ],
      ),
      itemCount: onBoardingList.length,
    );
  }
}
