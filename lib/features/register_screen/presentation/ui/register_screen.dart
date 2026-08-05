
import 'package:easy_localization/easy_localization.dart';
import'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:project/core/custom_text_field.dart';
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
      padding:EdgeInsets.symmetric(horizontal:22.w),
      child: Column(
        crossAxisAlignment:CrossAxisAlignment.start,
        children: [
          SizedBox(height:30.h),
            Text("Register Text 1".tr(),style:Theme.of(context).textTheme.titleLarge),
          SizedBox(height:30.h),
          CustomTextField(hintText: "Username".tr()),
          SizedBox(height:10.h),
          CustomTextField(hintText: "Email".tr()),
          SizedBox(height:10.h),
          CustomTextField(hintText: "Password".tr()),
          SizedBox(height:10.h),
          CustomTextField(hintText: "Confirm password".tr()),
          SizedBox(height:30.h),
          AppButton(text: "Register".tr()),
          SizedBox(height:220.h),
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
    );
  }
}