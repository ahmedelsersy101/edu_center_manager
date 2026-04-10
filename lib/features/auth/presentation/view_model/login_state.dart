part of 'login_cubit.dart';

abstract class LoginState {}

class LoginInitial extends LoginState {}

class LoginLoading extends LoginState {}

class LoginFailure extends LoginState {
  final String error;
  LoginFailure(this.error);
}

class LoginObscureToggled extends LoginState {
  final bool isObscure;
  LoginObscureToggled(this.isObscure);
}
class LoginSuccess extends LoginState {
  final String role; // اضافه متغير الدور
  LoginSuccess(this.role);
}
