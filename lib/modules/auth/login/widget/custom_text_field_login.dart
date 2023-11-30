import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';
import 'package:sprint/modules/auth/login/cubit/states.dart';
import '../../../../core/functions/valid_in_put.dart';
import '../../../../shared/components/components.dart';
import '../../../../shared/components/default_text_form_field.dart';
import '../../../../shared/components/my_conditional_builder.dart';
import '../../../../shared/components/my_material_button.dart';
import '../../../../shared/components/my_text_button.dart';
import '../../../home/home_screen.dart';
import '../../forgetpassword/forget_password_screen.dart';
import '../cubit/cubit.dart';

class CustomTextFieldLogin extends StatelessWidget
{
  const CustomTextFieldLogin({super.key});

  @override
  Widget build(BuildContext context)
  {
    return BlocProvider(
      create: (BuildContext context) => LoginCubit(),
      child: BlocConsumer<LoginCubit,LoginStates>(
        listener: (BuildContext context, state)
        {
          if(state is LoginSuccessState)
          {
            Get.offAll(const HomeScreen());
          } else if(state is LoginErrorState)
          {
            AwesomeDialog(
              context: context,
              dialogType: DialogType.warning,
              animType: AnimType.rightSlide,
              title: 'Error',
              desc: "Please verify the information entered",
            ).show();
          }
        },
        builder: (BuildContext context, state)
        {
          return Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children:
            [
              DefaultTextFormField(
                controller: LoginCubit.get(context).emailController,
                hintText: '6'.tr,
                type: TextInputType.emailAddress,
                validate: (value) {
                  validInput(value: value!, type: '6'.tr, min: 10, max: 50);
                  return null;
                }
              ),
              const SizedBox(
                height: 25,
              ),
              DefaultTextFormField(
                controller:  LoginCubit.get(context).passwordController,
                hintText: '7'.tr,
                type: TextInputType.visiblePassword,
                isPassword: true,
                validate: (value) {
                  validInput(value: value!, type: '7'.tr, min: 8, max: 50);
                  return null;
                  },
                onSubmit: (value)
                {
                  if(LoginCubit.get(context).formKey.currentState!.validate())
                  {
                    LoginCubit.get(context).loginUser();
                  }
                },
              ),
              const SizedBox(
                height: 5,
              ),
              MyTextButton(onPressed: ()
              {
                Get.off(const ForgetPasswordScreen());
               },
               text: "Forget Password", fontSize: 18),
              Padding(
                padding: const EdgeInsetsDirectional.only(
                  top: 56,
                  start: 67,
                  end: 66,
                ),
                child: MyConditionalBuilder(
                  condition: true,
                  builder: MyMaterialButton(
                      text: '8'.tr,
                      onTap: ()
                      {
                          if(LoginCubit.get(context).formKey.currentState!.validate())
                          {
                            LoginCubit.get(context).loginUser();
                          }
                      }
                  ),
                  fallback: myCircularProgressIndicator(),
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
