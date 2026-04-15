import 'package:edu_center_manager/core/utils/size_config.dart';
import 'package:edu_center_manager/core/widgets/adaptive_layout.dart';
import 'package:edu_center_manager/features/dashboard/presentation/view/widgets/dashboard_desktop_layout.dart';
import 'package:edu_center_manager/features/dashboard/presentation/view/widgets/dashboard_layout_mobile.dart';
import 'package:flutter/material.dart';

class DashboardView extends StatelessWidget {
  const DashboardView({super.key});

  @override
  Widget build(BuildContext context) {
    SizeConfig.init(context);
    return Scaffold(
      body: AdaptiveLayout(
        mobileLayout: (context) => const DashboardLayoutMobile(),
        desktopLayout: (context) => const DashboardDesktopLayout(),
      ),
    );
  }
}
