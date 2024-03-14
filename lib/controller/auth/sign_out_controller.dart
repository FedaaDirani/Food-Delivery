


import 'package:flutter/material.dart';
import 'package:food_delivery/core/class/status_request.dart';
import 'package:food_delivery/core/constant/routes.dart';
import 'package:food_delivery/core/functions/handlingdata.dart';
import 'package:food_delivery/data/datasource/remote/auth/signupdata.dart';
import 'package:get/get.dart';

abstract class SignUpController extends GetxController {
  signUp();
  visibilityPassword();

}
class SignUpControllerImp extends SignUpController {
  GlobalKey<FormState> formstate = GlobalKey<FormState>();
  TextEditingController emailController = TextEditingController();
  TextEditingController nameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  bool isPassword = true;

  @override
  void visibilityPassword ()
  {
    isPassword = !isPassword;
    update();
  }


  SignUpData signUpData = SignUpData(Get.find());
  List data = [];
  late StatusRequest statusRequest;


  @override
  signUp () async {
    if (formstate.currentState!.validate()){
      statusRequest = StatusRequest.loading;
      var response = await signUpData.postData(emailController.text, passwordController.text);
      statusRequest = handlingData(response);
      if (StatusRequest.success == statusRequest)
      {
        if (response['status'] == 'success') {
          data.addAll(response['data']);
          Get.offAllNamed(AppRoutes.signIn);
        } else {
          statusRequest = StatusRequest.failure;
        }

      }
      update();
    }
  }


  @override
  void onInit() {
    signUp();
    super.onInit();
  }

  @override
  goToHome() {
    Get.toNamed(AppRoutes.signIn);
  }


}