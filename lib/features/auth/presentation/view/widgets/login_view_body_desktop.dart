import 'package:easy_localization/easy_localization.dart';
import 'package:edu_center_manager/core/utils/app_images.dart';
import 'package:edu_center_manager/core/utils/app_style.dart';
import 'package:edu_center_manager/features/auth/presentation/view/widgets/login_form_card.dart';
import 'package:flutter/material.dart';

class LoginViewBodyDesktop extends StatelessWidget {
  const LoginViewBodyDesktop({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const SizedBox(height: 48),
                  Image.asset(Assets.logo, height: 140),
                  const SizedBox(height: 24),
                  Text(
                    'appTitle'.tr(),
                    textAlign: TextAlign.center,
                    style: AppStyles.styleBold32(context),
                  ),
                  const SizedBox(height: 8),
                  Text('welcomeToEduCenterManager'.tr(), style: AppStyles.styleRegular16(context)),
                ],
              ),
              const SizedBox(height: 48),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 48),
                child: LoginFormCard(padding: EdgeInsets.all(24)),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
