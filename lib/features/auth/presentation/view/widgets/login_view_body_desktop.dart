import 'package:edu_center_manager/features/auth/presentation/view/widgets/login_branding_section.dart';
import 'package:edu_center_manager/features/auth/presentation/view/widgets/login_form_card.dart';
import 'package:flutter/material.dart';

class LoginViewBodyDesktop extends StatelessWidget {
  const LoginViewBodyDesktop({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF7F8FA),
      body: Row(
        children: [
          // الجانب الأيسر الأبيض الفارغ (Desktop فقط)
          Expanded(flex: 1, child: Container(color: Colors.white)),
          // القسم الأزرق المركزي مع الفورم بداخله
          Expanded(
            flex: 2,
            child: Stack(
              children: [
                const LoginBrandingSection(topPadding: 100),
                Center(
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        SizedBox(height: MediaQuery.sizeOf(context).height * 0.24),
                        const LoginFormCard(),
                        const SizedBox(height: 32),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          // الجانب الأيمن الأبيض الفارغ (Desktop فقط)
          Expanded(flex: 1, child: Container(color: Colors.white)),
        ],
      ),
    );
  }
}
