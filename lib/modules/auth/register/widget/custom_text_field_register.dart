import 'package:flutter/material.dart';
import 'package:get/get_utils/get_utils.dart';
import '../../../../core/functions/valid_in_put.dart';
import '../../../../shared/components/components.dart';
import '../../../../shared/components/default_text_form_field.dart';
import '../../../../shared/components/my_conditional_builder.dart';
import '../../../../shared/components/my_material_button.dart';

class CustomTextFieldRegister extends StatelessWidget
{
  const CustomTextFieldRegister({super.key});

  @override
  Widget build(BuildContext context)
  {
    return Column(
      children:
      [
        DefaultTextFormField(
          controller: TextEditingController(),
          hintText: '12'.tr,
          type: TextInputType.name,
          validate: (value) {
            validInput(value: value!, type: '12'.tr, min: 4, max: 50);
            return null;
          },
        ),
        const SizedBox(
          height: 25,
        ),
        DefaultTextFormField(
          controller: TextEditingController(),
          hintText: '6'.tr,
          type: TextInputType.emailAddress,
          validate:(value) {
            validInput(value: value!, type: '6'.tr, min: 10, max: 50);
            return null;
          },
        ),
        const SizedBox(
          height: 25,
        ),
        DefaultTextFormField(
          controller: TextEditingController(),
          hintText: '7'.tr,
          type: TextInputType.visiblePassword,
          isPassword: true,
          validate: (value) {
            validInput(value: value!, type: '7'.tr, min: 8, max: 50);
            return null;
          },
        ),
        const SizedBox(
          height: 25,
        ),
        DefaultTextFormField(
          controller: TextEditingController(),
          hintText: '10'.tr,
          type: TextInputType.phone,
          validate: (value) {
            validInput(value: value!, type: '10'.tr, min: 11, max: 11);
            return null;
          },
          onSubmit: (value)
          {
            // if(RegisterCubit.get(context).formKey.currentState!.validate())
            // {
            //   RegisterCubit.get(context).loginUser(
            //     email: RegisterCubit.get(context).emailController.text,
            //     password: RegisterCubit.get(context).passwordController.text,
            //   );
            // }
          },
        ),
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
                //   if(RegisterCubit.get(context).formKey.currentState!.validate())
                //   {
                //     RegisterCubit.get(context).loginUser(
                //       email: RegisterCubit.get(context).emailController.text,
                //       password: RegisterCubit.get(context).passwordController.text,
                //     );
                //   }
                }
            ),
            fallback: myCircularProgressIndicator(),
          ),
        ),
      ],
    );
  }
}
