import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:project/core/custom_text_field.dart';
import 'package:project/core/theme/app_colors.dart';
import 'package:project/core/widgets/app_button.dart';
import 'package:project/core/widgets/custom_back_button.dart';
import 'package:project/features/register_screen/presentation/ui/register_screen.dart';

class LoginScreen extends StatelessWidget{
  const LoginScreen({super.key});
  @override
  Widget build(BuildContext context) {
   return Scaffold(
    appBar: AppBar(
      leading: CustomBackButton(),
      leadingWidth: 70.w,
    ),
    body: Padding(
      padding:EdgeInsets.symmetric(horizontal: 22.w),
      child: Column(
        crossAxisAlignment:CrossAxisAlignment.start,
        children: [
          SizedBox(height:30.h),
          Text("Login Text 1".tr(),style:Theme.of(context).textTheme.titleLarge),
          Text("Login Text 2".tr(),style:Theme.of(context).textTheme.titleLarge),
          SizedBox(height:32.h),
          CustomTextField(hintText: "Enter your email".tr()),
          SizedBox(height:16.h),
          CustomTextField(hintText: "Enter your password".tr()),
          SizedBox(height:20.h),
          AppButton(text: "Login".tr(),
          onTap: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=>RegisterScreen()));
          }),
          SizedBox(height:330.h),
          Center(
            child: RichText(text:TextSpan(
            style:Theme.of(context).textTheme.titleSmall,
            children: [
            TextSpan(text: "Login Text 3".tr()),
            TextSpan(text: "Login Text 4".tr(),style:Theme.of(context).textTheme.titleSmall?.copyWith(
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