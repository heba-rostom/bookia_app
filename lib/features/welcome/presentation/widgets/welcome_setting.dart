
import 'package:easy_localization/easy_localization.dart';
import'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:project/core/cubit/cubit/theme_cubit.dart';
import 'package:project/core/helper/extentions.dart';
import 'package:project/core/theme/app_theme.dart';

class WelcomeSetting extends StatelessWidget{
  const WelcomeSetting({super.key});
  @override
  Widget build(BuildContext context) {
    return Container(
              padding:16.padAll,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16 .r),
                color: Colors.black.withValues(alpha:.3),
              ),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment:MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Dark Mode".tr(),style:Theme.of(context).textTheme.titleMedium),
                      Switch(value:context.read<ThemeCubit>().appTheme==AppTheme.darkTheme, 
                      onChanged:(v){
                        context.read<ThemeCubit>().changeMode();
                      }),
                    ],
                  ),
                  20.verticalSpace,
                  Row(
                    mainAxisAlignment:MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Egnlish Language".tr(),style:Theme.of(context).textTheme.titleMedium),
                      Switch(value:context.locale.languageCode=='en',
                       onChanged:(v){
                        if(context.locale.languageCode=='ar'){
                          context.setLocale(Locale('en'));
                        }else{
                           context.setLocale(Locale('ar'));
                        }
                      }),
                    ],
                  ),
                ],
              ),
            ) ;
  }
}