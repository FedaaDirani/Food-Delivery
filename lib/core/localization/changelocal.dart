import 'dart:ui';


import 'package:food_delivery/core/services/services.dart';
import 'package:get/get.dart';

class LocaleLangController extends GetxController {
  Locale? language;
  MyServices myServices = Get.find();

  void changeLang(String langcode){
    Locale locale = Locale(langcode);
    myServices.sharedPreferences.setString('lang', langcode);
    Get.updateLocale(locale);

  }

  @override
  void onInit() {
    String? sharedPrefLang = myServices.sharedPreferences.getString('lang');
    if (sharedPrefLang == 'ar'){
      const language = Locale('ar');
    }else if (sharedPrefLang == 'en'){
      const language = Locale('en');
    }else {
      language = Locale(Get.deviceLocale!.languageCode);
    }
  }
}