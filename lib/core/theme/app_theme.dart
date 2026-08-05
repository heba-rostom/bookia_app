
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:project/core/theme/app_colors.dart';

class AppTheme {

 static ThemeData lightTheme = ThemeData(
   brightness:Brightness.light,
   fontFamily: "DM",
   textTheme: TextTheme(
    titleMedium: TextStyle(
      fontSize: 18.sp,
      fontWeight:FontWeight.bold,
    ),
    titleSmall: TextStyle(
      fontSize: 15.sp,
      fontWeight: FontWeight.w400,
    ),
    titleLarge: TextStyle(
      fontSize: 30.sp,
      fontWeight: FontWeight.w400,
    ),
   ),
   scaffoldBackgroundColor: AppColors.backgroundLight,
   appBarTheme: AppBarThemeData(
    backgroundColor: AppColors.backgroundLight,
   ),
   inputDecorationTheme: InputDecorationTheme(
    fillColor: Colors.white,
    filled: true,
    border:OutlineInputBorder(
      borderRadius: BorderRadius.circular(8.r),
      borderSide: BorderSide(color: AppColors.borderColor),
    ),
    focusedBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(8.r),
      borderSide: BorderSide(color: AppColors.mainColor),
    ),
    enabledBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(8.r),
      borderSide: BorderSide(color: AppColors.borderColor),
    ),
   ),
 );

 static ThemeData  darkTheme= ThemeData(

   brightness:Brightness.dark,
   fontFamily: "DM",
   textTheme: TextTheme(
    titleMedium: TextStyle(
      fontSize: 18.sp,
      fontWeight:FontWeight.bold,
    ),
    titleSmall: TextStyle(
      fontSize: 15.sp,
      fontWeight: FontWeight.w400,
    ),
      titleLarge: TextStyle(
      fontSize: 30.sp,
      fontWeight: FontWeight.w400,
    ),
   ),
    scaffoldBackgroundColor: AppColors.backgroundDark,
    appBarTheme: AppBarThemeData(
    backgroundColor: AppColors.backgroundDark,
   ),
   inputDecorationTheme: InputDecorationTheme(
    fillColor: Colors.black.withValues(alpha: .7),
    filled: true,
    border:OutlineInputBorder(
      borderRadius: BorderRadius.circular(8.r),
      borderSide: BorderSide(color: AppColors.borderColor),
    ),
    focusedBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(8.r),
      borderSide: BorderSide(color: AppColors.mainColor),
    ),
    enabledBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(8.r),
      borderSide: BorderSide(color: AppColors.borderColor),
    ),
   ),
 );

}