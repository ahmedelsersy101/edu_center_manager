import 'package:edu_center_manager/core/utils/app_router.dart';
import 'package:edu_center_manager/features/auth/data/services/auth_service.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

part 'login_state.dart';

class LoginCubit extends Cubit<LoginState> {
  LoginCubit() : super(LoginInitial());

  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  bool isObscure = true;

  void toggleObscure() {
    isObscure = !isObscure;
    emit(LoginObscureToggled(isObscure));
  }

  Future<void> login(BuildContext context) async {
    emit(LoginLoading());
    try {
      final data = await loginAndGetRole(
        email: emailController.text.trim(),
        password: passwordController.text.trim(),
      );

      final role = data['role'];

      if (role == 'admin') {
        if (context.mounted) {
          GoRouter.of(context).pushReplacement(AppRouter.kDashboardView);
        }
      }
    } catch (e) {
      emit(LoginFailure(e.toString()));
      if (context.mounted) {
        ScaffoldMessenger.of(
          context,
        ).showSnackBar(SnackBar(content: Text('Login Failed: $e')));
      }
    }
  }

  @override
  Future<void> close() {
    emailController.dispose();
    passwordController.dispose();
    return super.close();
  }
}
