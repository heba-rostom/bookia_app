
import 'package:easy_localization/easy_localization.dart';
import'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:project/core/helper/extentions.dart';
import 'package:project/core/routes/routes.dart';
import 'package:project/core/theme/app_colors.dart';
import 'package:project/core/widgets/app_button.dart';
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
            135.verticalSpace,
            Assets.images.splashLogo.image(),
            28.verticalSpace,
            Text("Welcome text".tr(),style:Theme.of(context).textTheme.titleMedium),
            28.verticalSpace,
            WelcomeSetting(),
            150.verticalSpace,
                  AppButton(text: "Login".tr(),onTap: (){
                   context.pushNamed(context,Routes.loginScreen);
                  }),
                  10.verticalSpace,
                  AppButton(
                    onTap: (){
                      context.pushNamed(context,Routes.registerScreen);
                    },
                    text: "Register".tr(),backgroundColor:AppColors.backgroundLight)
          ],
        ),
      ),

    );
  }
}