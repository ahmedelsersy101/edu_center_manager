import 'package:edu_center_manager/core/widgets/adaptive_layout.dart';
import 'package:edu_center_manager/features/settings/presentation/view/widgets/settings_view_body_desktop.dart';
import 'package:edu_center_manager/features/settings/presentation/view/widgets/settings_view_body_mobile.dart';
import 'package:flutter/material.dart';

class SettingsView extends StatelessWidget {
  const SettingsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AdaptiveLayout(
        mobileLayout: (context) => const SettingsViewBodyMobile(),
        desktopLayout: (context) => const SettingsViewBodyDesktop(),
      ),
    );
  }
}
