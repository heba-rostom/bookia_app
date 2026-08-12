import 'package:flutter/material.dart';
import 'package:project/bookia_app.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:project/core/helper/app_constant.dart';
import 'package:project/core/networking/dio_factory.dart';
import 'package:shared_preferences/shared_preferences.dart';
void main()async{
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();
  final SharedPreferences prefs = await SharedPreferences.getInstance();
  final String ?token = prefs.getString(AppConstant.userTokenKey);
  DioFactory.init();
  WidgetsBinding widgetsBinding = WidgetsFlutterBinding.ensureInitialized();
  FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);
  runApp(
    EasyLocalization(
      supportedLocales: [Locale('en'), Locale('ar')],
      path: 'assets/translations', 
      fallbackLocale: Locale('en'),
      child: BookiaApp(
        token: token,
      ),
    ),
  );

   FlutterNativeSplash.remove();
}

 