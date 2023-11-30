import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../shared/styles/theme/dark/dark_theme.dart';
import '../services/my_services.dart';

class LocaleController extends GetxController
{

  Locale? language;

  MyServices myServices = Get.find();

  ThemeData appTheme = darkThemeEn;

  langChange(String langCode)
  {
    Locale locale = Locale(langCode);

    myServices.sharedPreferences.setString("lang", langCode);
    appTheme = langCode == "ar" ? darkThemeAr : darkThemeEn;
    Get.changeTheme(appTheme);
    Get.updateLocale(locale);
  }

  @override
  void onInit()
  {
    String? sharedPrefLang = myServices.sharedPreferences.getString("lang");
    if (sharedPrefLang == "ar")
    {
      language = const Locale("ar");
      appTheme = darkThemeAr;
    } else if (sharedPrefLang == "en")
    {
      language = const Locale("en");
      appTheme = darkThemeEn;
    } else
    {
      language = Locale(Get.deviceLocale!.languageCode);
      appTheme = darkThemeEn;
    }
    super.onInit();
  }
}

initialServices() async
{
  await Get.putAsync(() => MyServices().init()) ;
}