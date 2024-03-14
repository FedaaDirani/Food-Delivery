
import 'package:flutter/material.dart';
import 'package:food_delivery/core/constant/app_sizes.dart';

class AuthMainTitle extends StatelessWidget {
  final String text;
  const AuthMainTitle({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
      child: Text(
        text,
        style: const TextStyle(
          fontSize: AppSizes.size30,
          fontWeight: FontWeight.bold,

        ),
      ),
    );
  }
}
