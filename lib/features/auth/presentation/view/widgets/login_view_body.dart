import 'package:edu_center_manager/core/utils/app_router.dart';
import 'package:edu_center_manager/services/auth_service.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class LoginViewBody extends StatefulWidget {
  const LoginViewBody({super.key});

  @override
  _LoginViewBodyState createState() => _LoginViewBodyState();
}

class _LoginViewBodyState extends State<LoginViewBody> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  bool isLoading = false;

  void login() async {
    setState(() => isLoading = true);
    try {
      final data = await loginAndGetRole(
        email: emailController.text.trim(),
        password: passwordController.text.trim(),
      );

      final role = data['role'];

      // توجه للشاشة حسب الدور
      if (role == 'admin') {
        GoRouter.of(context).pushReplacement(AppRouter.kHomeView);
      } 
    } catch (e) {
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("Login Failed: $e")));
    } finally {
      setState(() => isLoading = false);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(16),
        child: Column(children: []),
      ),
    );
  }
}
