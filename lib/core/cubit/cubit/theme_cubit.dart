import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:project/core/theme/app_theme.dart';

part 'theme_state.dart';

class ThemeCubit extends Cubit<ThemeState> {
  ThemeCubit() : super(ThemeInitial());

ThemeData appTheme = AppTheme.lightTheme;

 void changeMode(){
  if(appTheme == AppTheme.lightTheme){
      appTheme = AppTheme.darkTheme;
  }else{
    appTheme = AppTheme.lightTheme;
  }
    emit(ChangeState(AppTheme.darkTheme));
  }
}
