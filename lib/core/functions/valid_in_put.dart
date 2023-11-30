import 'package:get/get.dart';

validInput({
  required String value,
  required String type,
  required int min,
  required int max,
})
{
  if(value.isEmpty)
  {
    return "24".tr;
  }

  if(type == '12'.tr)
  {
    if(!GetUtils.isUsername(value))
    {
      return '19'.tr;
    }
  }

  if(type == '6'.tr)
  {
    if(!GetUtils.isEmail(value))
    {
      return '15'.tr;
    }
  }

  if(type == '7'.tr)
  {
    if(!GetUtils.isNum(value))
    {
      return '17'.tr;
    }
  }

  if(type == '10'.tr)
  {
    if(!GetUtils.isPhoneNumber(value))
    {
      return '18'.tr;
    }
  }

  if(value.length < min)
  {
    return "25$min".tr;
  }

  if(value.length > max)
  {
    return "26$max".tr;
  }
}