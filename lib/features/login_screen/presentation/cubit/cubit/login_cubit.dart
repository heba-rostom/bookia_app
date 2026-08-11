import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:project/features/login_screen/data/repo/login_repo.dart';

part 'login_state.dart';

class LoginCubit extends Cubit<LoginState> {
  LoginCubit() : super(LoginInitial());

  void login({required String email,required String password})async{
    emit(LoginLoding());
    // ignore: unused_local_variable
    final response= await LoginRepo.login(email: email, password: password);

if(response){
  emit(LoginSuccess());
}else{
  emit(LoginError());
}    
    
}
  
}
