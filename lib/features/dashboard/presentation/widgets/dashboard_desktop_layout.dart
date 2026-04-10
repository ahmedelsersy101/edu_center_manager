import 'package:edu_center_manager/features/dashboard/presentation/widgets/custom_drawer.dart';
import 'package:flutter/material.dart';

class DashboardDesktopLayout extends StatelessWidget {
  const DashboardDesktopLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Row(
        children: [
          CustomDrawer(),
          SizedBox(width: 40),
          Center(child: Text('Desktop Dashboard Layout')),
        ],
      ),
    );
  }
}
