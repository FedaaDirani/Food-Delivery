import 'package:flutter/material.dart';
import 'package:food_delivery/bindings/initialbindings.dart';
import 'package:food_delivery/core/localization/changelocal.dart';
import 'package:food_delivery/core/localization/translation.dart';
import 'package:food_delivery/routes.dart';
import 'package:food_delivery/view/auth/language.dart';
import 'package:get/get.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  // await initialServices();
  runApp(const MyApp());

}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    LocaleLangController controller = Get.put(LocaleLangController());
    return GetMaterialApp(
      translations: MyTranslation(),
      debugShowCheckedModeBanner: false,
      locale: controller.language,
      home: Language(),
      routes: routes,
      initialBinding: InitialBindings(),
    );
  }
}

