
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:food_delivery/core/constant/routes.dart';
import 'package:food_delivery/core/localization/changelocal.dart';
import 'package:food_delivery/view/widgets/language/custom_button_lang.dart';
import 'package:get/get.dart';

class Language extends GetView<LocaleLangController> {
  const Language({super.key});
  @override
  Widget build(BuildContext context) {

    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          '1'.tr,
        ),
        CustomButtonLang(text: 'Ar', onPressed: ()
        {
          controller.changeLang('ar');
          Get.toNamed(AppRoutes.onboarding);
        }),
        CustomButtonLang(text: 'Er', onPressed: ()
        {
          controller.changeLang('en');
          Get.toNamed(AppRoutes.onboarding);
        }),
      ],
    );
  }
}
