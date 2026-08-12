import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:project/core/custom_text_field.dart';
import 'package:project/core/helper/app_dialog.dart';
import 'package:project/core/helper/extentions.dart';
import 'package:project/core/routes/routes.dart';
import 'package:project/core/theme/app_colors.dart';
import 'package:project/core/widgets/app_button.dart';
import 'package:project/core/widgets/custom_back_button.dart';
import 'package:project/features/register_screen/data/model/register_request_body.dart';
import 'package:project/features/register_screen/presentation/cubit/cubit/register_cubit.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  var nameController = TextEditingController();
  var emailController = TextEditingController();
  var passwordController = TextEditingController();
  var confirmPasswordController = TextEditingController();
   var addressController = TextEditingController();
  var  cityController = TextEditingController();


  @override
  void dispose() {
   nameController.dispose();
   emailController.dispose();
   passwordController.dispose();
   confirmPasswordController.dispose();
   addressController.dispose();
   cityController.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return BlocListener<RegisterCubit, RegisterState>(
      listener: (context, state) {
        if(state is RegisterLoding){
          AppDialog.lodingDialog(context);
        }else if(state is RegisterSuccess){
         context.pushNamedAndRemoveUntil(Routes.homeScreen);
        }else{
          context.pop();
          AppDialog.errorDialog(context);
        }
      },
      child: Scaffold(
        appBar: AppBar(leading: CustomBackButton(), leadingWidth: 70.w),
        body: Padding(
          padding: 22.padHorizontal,
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                30.verticalSpace,
                Text(
                  "Register Text 1".tr(),
                  style: Theme.of(context).textTheme.titleLarge,
                ),
                30.verticalSpace,
                CustomTextField(
                  controller: nameController,
                  hintText: "Username".tr(),
                  keyboardType: TextInputType.name,
                ),
                10.verticalSpace,
                CustomTextField(
                  controller: emailController,
                  hintText: "Email".tr(),
                  keyboardType: TextInputType.emailAddress,
                ),
                10.verticalSpace,
                CustomTextField(
                  controller: passwordController,
                  hintText: "Password".tr(),
                  keyboardType: TextInputType.visiblePassword,
                  isPassword: true,
                ),
                10.verticalSpace,
                CustomTextField(
                  controller: confirmPasswordController,
                  hintText: "Confirm password".tr(),
                  keyboardType: TextInputType.visiblePassword,
                  isPassword: true,
                ),
                10.verticalSpace,
                CustomTextField(
                  controller: confirmPasswordController,
                  hintText: "address".tr(),
                  keyboardType: TextInputType.text,
                ),
                10.verticalSpace,
                CustomTextField(
                  controller: confirmPasswordController,
                  hintText: "city".tr(),
                  keyboardType: TextInputType.text,
                ),
                30.verticalSpace,
                AppButton(text: "Register".tr(),
                onTap: (){
                  context.read<RegisterCubit>().register(
                    RegisterRequestBody(
                      name: nameController.text, 
                      email: emailController.text,
                      password: passwordController.text,
                      confirmPassword: confirmPasswordController.text));
                      // ignore: unused_label
                      address: addressController.text;
                      // ignore: unused_label
                      city:cityController.text;
                },
                ),
                220.verticalSpace,
                Center(
                  child: RichText(
                    text: TextSpan(
                      style: Theme.of(context).textTheme.titleSmall,
                      children: [
                        TextSpan(text: "Register Text 2".tr()),
                        TextSpan(
                          text: "Register Text 3".tr(),
                          style: Theme.of(context).textTheme.titleSmall
                              ?.copyWith(color: AppColors.mainColor),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
