
import 'package:flutter/material.dart';
import 'package:food_delivery/core/constant/app_colors.dart';
import 'package:food_delivery/core/constant/app_sizes.dart';

class RegButton extends StatelessWidget {

  final  String text;
  final void Function() onTap;
  const RegButton({super.key, required this.text, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 20),
      width: 200,
      height: 60,
      decoration: ShapeDecoration(
        color: AppColors.mainColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
        ),
      ),
      child: InkWell(

        onTap: onTap,
        child: Text(
          text,
          textAlign: TextAlign.center,
          style: const TextStyle(
            color: AppColors.whiteColor,
            fontWeight: FontWeight.bold,
            fontSize: AppSizes.size20,

          ),
        ),
      ),
    );
  }
}


