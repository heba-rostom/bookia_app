
import 'package:easy_localization/easy_localization.dart';
import'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:project/core/theme/app_colors.dart';
import 'package:project/core/widgets/app_button.dart';
import 'package:project/features/login/presentation/ui/login_screen.dart';
import 'package:project/features/welcome/presentation/widgets/welcome_setting.dart';
import 'package:project/gen/assets.gen.dart';

class WelcomeScreen extends StatelessWidget{
  const WelcomeScreen ({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        padding: EdgeInsets.all(16.r),
        decoration: BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.cover,
            image:Assets.images.welcome2.image().image)
        ),
        child: Column(
          children: [
            SizedBox(height:135.h),
            Assets.images.splashLogo.image(),
            SizedBox(height:28.h),
            Text("Welcome text".tr(),style:Theme.of(context).textTheme.titleMedium),
            SizedBox(height:28.h),
            WelcomeSetting(),
            SizedBox(height:150.h),
                  AppButton(text: "Login".tr(),onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder:(context)=> LoginScreen()));
                  }),
                  SizedBox(height:10.h),
                  AppButton(text: "Register".tr(),backgroundColor:AppColors.backgroundLight)
          ],
        ),
      ),

    );
  }
}