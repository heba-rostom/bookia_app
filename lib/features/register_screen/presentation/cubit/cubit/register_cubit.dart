import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:project/features/register_screen/data/model/register_request_body.dart';
import 'package:project/features/register_screen/data/repo/register_repo.dart';

part 'register_state.dart';

class RegisterCubit extends Cubit<RegisterState> {
  RegisterCubit() : super(RegisterInitial());
  
  Future<void> register(RegisterRequestBody body)async{
  emit(RegisterLoding());
  final response = await RegisterRepo.register(body);

  if(response){
    emit(RegisterSuccess());
  }else{
    emit(RegisterError());
  }
  }
}
