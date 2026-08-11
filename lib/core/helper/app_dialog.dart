import 'package:flutter/material.dart';

class AppDialog {

 static Future<dynamic> lodingDialog(BuildContext context){

return showDialog(context: context, builder: (context)=>Dialog(
  backgroundColor:Colors.transparent ,
  child: Center(child: CircularProgressIndicator()),
));
}


 static Future<dynamic> errorDialog(BuildContext context){

return showDialog(context: context, builder: (context)=>AlertDialog(
title: Text("Error"),
content: Text("Please try again"),
));
}


}