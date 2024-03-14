
import 'package:flutter/material.dart';
import 'package:food_delivery/core/constant/app_colors.dart';
import 'package:food_delivery/core/constant/app_sizes.dart';

class CustomButtonLang extends StatelessWidget {
  final String text;
  final void Function()? onPressed;
  const CustomButtonLang({super.key, required this.text, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: MaterialButton(
        color: AppColors.mainColor,
        onPressed: onPressed,
        child: Text(
          text,
          style: const TextStyle(
            fontSize: AppSizes.size16,
            color: AppColors.whiteColor,
          ),
        ),

      ),
    );
  }
}
