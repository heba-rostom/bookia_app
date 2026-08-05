
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget{
  final String hintText ;
  const CustomTextField({super.key,required this.hintText});
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onTapOutside: (v){
        FocusScope.of(context).unfocus();
      },
      decoration: InputDecoration(
        hintText: hintText.tr(),
        hintStyle:Theme.of(context).textTheme.titleSmall?.copyWith(
          color: Color(0xff8391A1) ,
        ),
      ),
    );
  }
}