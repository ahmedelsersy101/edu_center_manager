import 'package:edu_center_manager/features/auth/presentation/view/widgets/login_branding_section.dart';
import 'package:edu_center_manager/features/auth/presentation/view/widgets/login_form_card.dart';
import 'package:flutter/material.dart';

class LoginViewBodyTablet extends StatelessWidget {
  const LoginViewBodyTablet({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF7F8FA),
      body: Row(
        children: [
          // القسم الأزرق (النصف الأيسر)
          const Expanded(flex: 1, child: LoginBrandingSection()),
          // الفورم (النصف الأيمن)
          Expanded(
            flex: 1,
            child: Center(child: SingleChildScrollView(child: const LoginFormCard())),
          ),
        ],
      ),
    );
  }
}
