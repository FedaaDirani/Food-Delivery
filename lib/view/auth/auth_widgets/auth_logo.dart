
import 'package:flutter/material.dart';
import 'package:food_delivery/core/constant/image_assets.dart';

class AuthLogo extends StatelessWidget {
  const AuthLogo({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        Image.asset(
          AppImageAsset.backgroundImage,
          width: double.infinity,
          height: 250,
          fit: BoxFit.fitWidth,
        ),
        Image.asset(
          AppImageAsset.logoImage,
        ),
      ],
    );
  }
}
