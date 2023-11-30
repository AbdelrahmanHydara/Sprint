import 'dart:convert';
import 'package:dartz/dartz.dart';
import 'package:sprint/core/class/status_request.dart';
import 'package:sprint/shared/helper/remote/dio_helper.dart';
import '../functions/check_internet.dart';

class Crud
{
  Future<Either<StatusRequest, Map>> postData(
      String url,
      Map<String,dynamic> data,) async
  {
    try {
      if (await checkInternet())
      {
        var response = await DioHelper.postDats(url: url, data: data);

        if (response.statusCode == 200 || response.statusCode == 201)
        {
          Map responseBody = jsonDecode(response.data);
          return Right(responseBody);
        } else
        {
          return const Left(StatusRequest.serverError);
        }
      } else
      {
        return const Left(StatusRequest.offline);
      }
    } catch (_)
    {
      return const Left(StatusRequest.serverError);
    }
  }
}