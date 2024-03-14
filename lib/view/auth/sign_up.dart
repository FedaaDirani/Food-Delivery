
import 'package:flutter/material.dart';
import 'package:food_delivery/controller/auth/sign_out_controller.dart';
import 'package:food_delivery/core/constant/app_colors.dart';
import 'package:food_delivery/view/auth/auth_widgets/auth_body_text.dart';
import 'package:food_delivery/view/auth/auth_widgets/auth_logo.dart';
import 'package:food_delivery/view/auth/auth_widgets/auth_main_title.dart';
import 'package:food_delivery/view/auth/auth_widgets/custom_reg_button.dart';
import 'package:food_delivery/view/auth/auth_widgets/custom_text_form_password.dart';
import 'package:get/get.dart';

import 'auth_widgets/custom_text_form_feild.dart';

class SignUpScreen extends GetView<SignUpControllerImp> {
  @override
  Widget build(BuildContext context) {
    SignUpControllerImp controller = Get.put(SignUpControllerImp());
    return Scaffold(
      backgroundColor: AppColors.whiteColor,
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children:
            [
              const AuthLogo(),
              AuthMainTitle(text: '2'.tr,),
              GetBuilder<SignUpControllerImp>(
                  builder: (_) {
                    return CustomTextFormFieldWidget(
                      controller: controller.nameController,
                      label: '3'.tr,
                      hint: '4'.tr,
                      keyboardType: TextInputType.text,
                      preIcon: Icons.person,
                      obscure: false,
                    );
                  }
              ),
              GetBuilder<SignUpControllerImp>(
                  builder: (_) {
                    return CustomTextFormFieldWidget(
                      controller: controller.emailController,
                      label: '5'.tr,
                      hint: 'fedaa@gmail.com',
                      keyboardType: TextInputType.emailAddress,
                      preIcon: Icons.email,

                      obscure: false,
                    );
                  }
              ),
              GetBuilder<SignUpControllerImp>(
                  builder: (_) {
                    return CustomTextFormPassword(
                      controller: controller.passwordController,
                      preIcon: Icons.lock,
                      label: '6'.tr,
                      keyboardType: TextInputType.visiblePassword,
                      hint: '7'.tr,
                      sufIcon: controller.isPassword ?
                      Icons.visibility : Icons.visibility_off,
                      onPressed: (){
                        controller.visibilityPassword();
                      }, obscure: true,
                    );
                  }
              ),
              const SizedBox(height: 10,),
              GetBuilder<SignUpControllerImp>(
                  builder: (_) {
                    return RegButton(
                      onTap: (){},
                      text: '8'.tr,
                    );
                  }
              ),
              AuthBodyText(text: '9'.tr, onTap: (){}),
            ],
          ),
        ),
      ),
    );
  }
}
