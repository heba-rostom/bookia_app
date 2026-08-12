import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:project/core/cubit/cubit/theme_cubit.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:project/core/routes/app_router.dart';
import 'package:project/core/routes/routes.dart';

class BookiaApp extends StatelessWidget {
  final String ?token;
  const BookiaApp({super.key, required this.token});
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (_, child) {
        return BlocProvider(
          create: (context) => ThemeCubit(),
          child: BlocBuilder<ThemeCubit, ThemeState>(
            builder: (context, state) {
              return MaterialApp(
                localizationsDelegates: context.localizationDelegates,
                supportedLocales: context.supportedLocales,
                locale: context.locale,
                debugShowCheckedModeBanner: false,
                theme:context.read<ThemeCubit>().appTheme,
                onGenerateRoute:AppRouter.onGenerateRoute,
                initialRoute:token==null? Routes.welcomeScreen:Routes.registerScreen,
                
              );
            },
          ),
        );
      },
    );
  }
}
