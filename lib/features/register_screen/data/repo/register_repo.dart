
import 'package:project/core/networking/dio_factory.dart';
import 'package:project/features/login_screen/data/repo/login_repo.dart';
import 'package:project/features/register_screen/data/model/register_request_body.dart';

class RegisterRepo {

 static Future<bool> register(RegisterRequestBody body)async{
 try{
 final response = await DioFactory.dio.post("register",
 data: {
 "name":body.name,
 "email":body.email,
 "password":body.password,
 "password_confirmation":body.confirmPassword,
 });

 if(response.statusCode==201){
  LoginRepo.saveUserToken(response.data["data"]["token"]);
  return true;
 }else{
  return false;
 }
 }catch(e){
 return false;
 }

 }








}