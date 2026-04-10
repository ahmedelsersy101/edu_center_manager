import 'package:edu_center_manager/core/utils/size_config.dart';
import 'package:edu_center_manager/features/dashboard/presentation/widgets/adaptive_layout.dart';
import 'package:edu_center_manager/features/dashboard/presentation/widgets/dashboard_desktop_layout.dart';
import 'package:edu_center_manager/features/dashboard/presentation/widgets/dashboard_layout_mobile.dart';
import 'package:edu_center_manager/features/dashboard/presentation/widgets/dashboard_tablet_layout.dart';
import 'package:flutter/material.dart';

class DashboardView extends StatelessWidget {
  const DashboardView({super.key});

  @override
  Widget build(BuildContext context) {
    SizeConfig.init(context);
    return Scaffold(
     
      backgroundColor: const Color(0xffE5E5E5),
      body: AdaptiveLayout(
        mobileLayout: (context) => const DashboardLayoutMobile(),
        tabletLayout: (context) => const DashboardTabletLayout(),
        desktopLayout: (context) => const DashboardDesktopLayout(),
      ),
    );
  }
}
