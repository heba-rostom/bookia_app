part of 'login_cubit.dart';

@immutable
sealed class LoginState {}

final class LoginInitial extends LoginState {}

final class LoginLoding extends LoginState {}

final class LoginError extends LoginState {}

final class LoginSuccess extends LoginState {}
