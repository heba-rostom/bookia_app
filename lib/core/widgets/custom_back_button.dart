import'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:project/core/theme/app_colors.dart';

class CustomBackButton extends StatelessWidget{
  const CustomBackButton({super.key});
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        Navigator.pop(context);
      },
      child: Container(
        margin: EdgeInsetsDirectional.only(start:20.w),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(12.r),
          border: Border.all(color:AppColors.borderColor),
        ),
        child: Center(child: Icon(Icons.arrow_back_ios,size:18.r)),
      ));
  }
}