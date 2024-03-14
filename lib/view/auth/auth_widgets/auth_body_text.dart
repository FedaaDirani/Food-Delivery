
import 'package:flutter/material.dart';
import 'package:food_delivery/core/constant/app_colors.dart';
import 'package:food_delivery/core/constant/app_sizes.dart';

class AuthBodyText extends StatelessWidget {
  final String text;
  final void Function() onTap;
  const AuthBodyText({super.key, required this.text, required this.onTap,});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 100),
      child: InkWell(
        onTap: onTap,
        child: Text(
          text,
          style: TextStyle(
            decoration: TextDecoration.underline,
            color: AppColors.mainColor,
            fontSize: AppSizes.size16,
          ),
        ),
      ),
    );
  }
}
