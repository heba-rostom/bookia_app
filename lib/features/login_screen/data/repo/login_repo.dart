import 'package:project/core/helper/app_constant.dart';
import 'package:project/core/networking/dio_factory.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LoginRepo {

 static Future<bool> login({required String email,required String password})async{
try{

 var response= await DioFactory.dio.post("login",
data: {
    "email" : email,
    "password" :password
}
);
if(response.statusCode==200){
  // ignore: avoid_print
  print(response.data["data"]["token"]);
  saveUserToken(response.data["data"]["token"]);
  return true;
}else{
  return false;}
}catch(e){
// ignore: avoid_print
print(e);
return false;
}}

  static Future<void> saveUserToken(String token)async{
final SharedPreferences prefs = await SharedPreferences.getInstance();

await prefs.setString(AppConstant.userTokenKey,token);


}

}