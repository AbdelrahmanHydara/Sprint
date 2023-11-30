import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sprint/modules/auth/login/cubit/states.dart';
import '../../../../shared/helper/end_points.dart';
import '../../../../shared/helper/remote/dio_helper.dart';

class LoginCubit extends Cubit<LoginStates>
{
  LoginCubit() : super(LoginInitialState());

  static LoginCubit get(context) => BlocProvider.of(context);

  var formKey = GlobalKey<FormState>();

  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  loginUser()
  {
    emit(LoginLoadingState());

    DioHelper.postDats(
      url: login,
      data:
      {
        "email" :  emailController.text,
        "password" : passwordController.text,
      },
    ).
    then((value)
    {
      emit(LoginSuccessState());
    }).
    catchError((errorMessage)
    {
      emit(LoginErrorState(errorMessage.toString()));
    });
  }
}