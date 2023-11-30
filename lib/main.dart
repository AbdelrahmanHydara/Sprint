import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sprint/modules/splash/splash_screen.dart';
import 'package:sprint/shared/helper/remote/dio_helper.dart';
import 'core/localization/local_change.dart';
import 'core/localization/my_translation.dart';

void main() async
{
  WidgetsFlutterBinding.ensureInitialized();
  await DioHelper.init();
  await initialServices();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget
{
  const MyApp({super.key});

  @override
  Widget build(BuildContext context)
  {
    LocaleController controller = Get.put(LocaleController());

    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      translations: MyTranslations(),
      locale: controller.language,
      theme: controller.appTheme,
      home:  const SplashScreen(),
    );
  }
}
