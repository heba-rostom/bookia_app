
import 'package:easy_localization/easy_localization.dart';
import'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:project/core/custom_text_field.dart';
import 'package:project/core/helper/extentions.dart';
import 'package:project/core/theme/app_colors.dart';
import 'package:project/core/widgets/app_button.dart';
import 'package:project/core/widgets/custom_back_button.dart';

class RegisterScreen extends StatelessWidget{
  const RegisterScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
      leading: CustomBackButton(),
      leadingWidth: 70.w,
    ),
    body: Padding(
      padding:22.padHorizontal,
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment:CrossAxisAlignment.start,
          children: [
            30.verticalSpace,
              Text("Register Text 1".tr(),style:Theme.of(context).textTheme.titleLarge),
            30.verticalSpace,
            CustomTextField(hintText: "Username".tr(),
            keyboardType: TextInputType.name,
            ),
            10.verticalSpace,
            CustomTextField(hintText: "Email".tr(),
            keyboardType: TextInputType.emailAddress,
            ),
            10.verticalSpace,
            CustomTextField(hintText: "Password".tr(),
            keyboardType: TextInputType.visiblePassword,
            isPassword: true,
            ),
            10.verticalSpace,
            CustomTextField(hintText: "Confirm password".tr(),
            keyboardType: TextInputType.visiblePassword,
            isPassword: true,
            ),
            30.verticalSpace,
            AppButton(text: "Register".tr()),
            220.verticalSpace,
            Center(
              child: RichText(text:TextSpan(
              style:Theme.of(context).textTheme.titleSmall,
              children: [
              TextSpan(text: "Register Text 2".tr()),
              TextSpan(text: "Register Text 3".tr(),style:Theme.of(context).textTheme.titleSmall?.copyWith(
                color: AppColors.mainColor,
              )),
              ]
              )
              ),
            )
            
          ],
        ),
      ),
    ),
    );
  }
}