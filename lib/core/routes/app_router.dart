
import'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:project/core/routes/routes.dart';
import 'package:project/features/home_screen/presentation/ui/home_screen.dart';
import 'package:project/features/login_screen/presentation/cubit/cubit/login_cubit.dart';
import 'package:project/features/login_screen/presentation/ui/login_screen.dart';
import 'package:project/features/register_screen/presentation/ui/register_screen.dart';
import 'package:project/features/welcome/presentation/welcome_screen.dart';

class AppRouter {

 static Route? onGenerateRoute (RouteSettings setting){

  switch(setting.name){
          case Routes.loginScreen:
         return MaterialPageRoute(
    builder: (context) => BlocProvider(
    create: (context) => LoginCubit(),
    child: const LoginScreen(),
  ),
);
          case Routes.registerScreen:
          return MaterialPageRoute(builder:(context)=>RegisterScreen());
          case Routes.welcomeScreen:
          return MaterialPageRoute(builder:(context)=>WelcomeScreen());
          case Routes.homeScreen:
          return MaterialPageRoute(builder:(context)=>HomeScreen());







          default:
          return MaterialPageRoute(builder:(context)=>Scaffold(
            body: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Center(child: Text("404 Not Found",style:Theme.of(context).textTheme.titleMedium)),
              ],
            ),
          ));
 }
}






}