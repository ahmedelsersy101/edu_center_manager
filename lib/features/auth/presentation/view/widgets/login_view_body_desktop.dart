import 'package:edu_center_manager/core/utils/app_images.dart';
import 'package:edu_center_manager/core/utils/app_style.dart';
import 'package:edu_center_manager/features/auth/presentation/view/widgets/login_background_painter.dart';
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
                Container(
                  height: double.infinity,
                  width: double.infinity,
                  color: const Color(0xFF2F69F8),
                  child: CustomPaint(painter: LoginBackgroundPainter()),
                ),
                SingleChildScrollView(
                  child: Column(
                    children: [
                      SizedBox(height: MediaQuery.sizeOf(context).height * 0.1),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SizedBox(height: 8),
                          Image.asset(Assets.logo, height: 140, color: Colors.white),
                          const SizedBox(height: 24),
                          Text(
                            'Login to your Account',
                            textAlign: TextAlign.center,
                            style: AppStyles.styleBold24(
                              context,
                            ).copyWith(color: Colors.white, fontSize: 28),
                          ),
                          const SizedBox(height: 8),
                          Text(
                            'Enter your email and password to log in',
                            style: AppStyles.styleRegular14(
                              context,
                            ).copyWith(color: Colors.white.withOpacity(0.8)),
                          ),
                        ],
                      ),
                      SizedBox(height: 48),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 48),
                        child: LoginFormCard(
                          padding: EdgeInsets.all(24),
                          maxWidth: double.infinity,
                        ),
                      ),
                    ],
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
