
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

class CustomTextField extends StatefulWidget{
  final String hintText ;
  final TextInputType? keyboardType;
  final bool isPassword;
  final TextEditingController? controller;
  const CustomTextField({super.key,required this.hintText,required this.keyboardType,this.isPassword=false,this.controller});

  @override
  State<CustomTextField> createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {
  bool isObsecure =true;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller:widget.controller,
      keyboardType:widget.keyboardType ,
      obscureText: widget.isPassword && isObsecure,
      onTapOutside: (v){
        FocusScope.of(context).unfocus();
      },
      decoration: InputDecoration(
        hintText: widget.hintText.tr(),
        suffixIcon:widget.isPassword?InkWell(
          onTap: (){
            setState(() {
              isObsecure=!isObsecure;
            });
          },
          child:Icon(
            isObsecure?
            Icons.visibility_off:Icons.visibility)):null,
        hintStyle:Theme.of(context).textTheme.titleSmall?.copyWith(
          color: Color(0xff8391A1) ,
        ),
      ),
    );
  }
}