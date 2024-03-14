

import 'package:flutter/material.dart';
import 'package:food_delivery/core/constant/routes.dart';
import 'package:get/get.dart';

abstract class SignInController extends GetxController {
  visibilityPassword();
  goToHome();
  login();
  goToSignUp();
  goToForgetPassword();
}

class SignInControllerImp extends SignInController {
  var emailController = TextEditingController();
  var passwordController = TextEditingController();
  late bool isPassword= true;
  GlobalKey<FormState> formstate = GlobalKey<FormState>();


  @override
  void visibilityPassword ()
  {
    isPassword = !isPassword;
    update();
  }

  login() {
    var formdata = formstate.currentState;
    if(formdata!.validate()) {
      print('valid');

    } else {
      print('not valid');
    }
  }
  @override
  goToHome() {
    Get.toNamed(AppRoutes.signup);
  }

  @override
  goToSignUp() {
    Get.toNamed(AppRoutes.signup);
  }
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  @override
  goToForgetPassword() {
    Get.toNamed(AppRoutes.signup);
  }
}