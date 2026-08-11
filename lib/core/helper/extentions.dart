
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


extension Navigation on BuildContext{

// ignore: strict_top_level_inference
Future pushNamed(context, routes){
return Navigator.pushNamed(this, routes);
}
void pop()=> Navigator.pop(this);


Future<Object?> pushNamedAndRemoveUntil(String routes){
return Navigator.pushNamedAndRemoveUntil(this,routes,(v)=>false);
}
}

extension Paddingg on num {
 EdgeInsets get padHorizontal{

  return EdgeInsets.symmetric(horizontal:toDouble().w);
}

EdgeInsets get padVertical{

  return EdgeInsets.symmetric(vertical:toDouble().h);
}

EdgeInsets get padAll{

  return EdgeInsets.all(toDouble().r);
}

}