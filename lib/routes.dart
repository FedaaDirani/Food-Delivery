import 'package:flutter/cupertino.dart';
import 'package:food_delivery/core/constant/routes.dart';
import 'package:food_delivery/view/auth/sign_up.dart';
import 'package:food_delivery/view/screens/onboarding.dart';

Map<String,Widget Function (BuildContext)> routes = {
  AppRoutes.signup : (context) => SignUpScreen(),
  AppRoutes.onboarding : (context) => const OnBoarding(),
  // AppRoutes.signIn : (context) => SignInScreen(),
};