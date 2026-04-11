import 'package:edu_center_manager/features/auth/presentation/view/widgets/login_view_body_desktop.dart';
import 'package:edu_center_manager/features/auth/presentation/view/widgets/login_view_body_mobile.dart';
import 'package:edu_center_manager/features/auth/presentation/view_model/login_cubit.dart';
import 'package:edu_center_manager/features/dashboard/presentation/widgets/adaptive_layout.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => LoginCubit(),
      child: Scaffold(
        body: AdaptiveLayout(
          mobileLayout: (context) => const LoginViewBodyMobile(),
          desktopLayout: (context) => const LoginViewBodyDesktop(),
        ),
      ),
    );
  }
}
