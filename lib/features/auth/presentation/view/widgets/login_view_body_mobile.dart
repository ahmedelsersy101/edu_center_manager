import 'package:edu_center_manager/features/auth/presentation/view/widgets/login_branding_section.dart';
import 'package:edu_center_manager/features/auth/presentation/view/widgets/login_form_card.dart';
import 'package:flutter/material.dart';

class LoginViewBodyMobile extends StatelessWidget {
  const LoginViewBodyMobile({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        // الخلفية الزرقاء مع اللوجو
        const LoginBrandingSection(topPadding: 70),
        // الفورم يطفو فوق الخلفية
        SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: MediaQuery.sizeOf(context).height * 0.35),
              const LoginFormCard(
                padding: EdgeInsets.all(24),
                maxWidth: double.infinity,
              ),
              const SizedBox(height: 24),
            ],
          ),
        ),
      ],
    );
  }
}
