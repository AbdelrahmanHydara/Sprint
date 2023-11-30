import 'dart:io';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../shared/components/my_material_button.dart';

Future<bool> alertExitApp()
{
  Get.defaultDialog(
    title: '20'.tr,
    middleText: '21'.tr,
    actions:
    [
      MyMaterialButton(
        onTap: ()
        {
          exit(0);
        },
        text: '22'.tr,
        radius: 20,
      ),
      const SizedBox(
        height: 5,
      ),
      MyMaterialButton(
        onTap: ()
        {
          Get.back();
        },
        text: '23'.tr,
        radius: 20,
      ),
      const SizedBox(
        height: 5,
      ),
    ],
  );
  return Future.value(true);
}