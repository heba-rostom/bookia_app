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
import 'package:project/features/login_screen/presentation/cubit/cubit/login_cubit.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  var emailController =TextEditingController();
  var passwordController =TextEditingController();

  @override void dispose() {
   emailController.dispose();
   passwordController.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(leading: CustomBackButton(), leadingWidth: 70.w),
      body: BlocListener<LoginCubit,LoginState>(
        listener: (context, state) {
         if(state is LoginLoding){
          AppDialog.lodingDialog(context);
         }else if(state is LoginSuccess){
          context.pushNamedAndRemoveUntil(Routes.homeScreen);
         }else{
          context.pop();
          AppDialog.errorDialog(context);
         }
        },
        child: Padding(
          padding: 22.padHorizontal,
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                30.verticalSpace,
                Text(
                  "Login Text 1".tr(),
                  style: Theme.of(context).textTheme.titleLarge,
                ),
                Text(
                  "Login Text 2".tr(),
                  style: Theme.of(context).textTheme.titleLarge,
                ),
                32.verticalSpace,
                CustomTextField(
                  controller:emailController ,
                  hintText: "Enter your email".tr(),
                  keyboardType: TextInputType.emailAddress,
                ),
                16.verticalSpace,
                CustomTextField(
                  controller:passwordController ,
                  hintText: "Enter your password".tr(),
                  keyboardType: TextInputType.visiblePassword,
                  isPassword: true,
                ),
                20.verticalSpace,
                Align(
                  alignment: AlignmentGeometry.bottomEnd,
                  child: TextButton(
                    onPressed: () {},
                    child: Text(
                      "Forget Password".tr(),
                      style: Theme.of(context).textTheme.titleSmall,
                    ),
                  ),
                ),
                20.verticalSpace,
                AppButton(text: "Login".tr(),
                 onTap: () {
                 context.read<LoginCubit>().login(email: emailController.text, password: passwordController.text);

                 }),
                280.verticalSpace,
                Center(
                  child: RichText(
                    text: TextSpan(
                      style: Theme.of(context).textTheme.titleSmall,
                      children: [
                        TextSpan(text: "Login Text 3".tr()),
                        TextSpan(
                          text: "Login Text 4".tr(),
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
