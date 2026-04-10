import 'package:edu_center_manager/features/dashboard/presentation/view/root_view.dart';
import 'package:edu_center_manager/features/dashboard/presentation/widgets/custom_drawer.dart';
import 'package:flutter/material.dart';

class DashboardLayoutMobile extends StatelessWidget {
  const DashboardLayoutMobile({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(), drawer: CustomDrawer(), body: RootView());
  }
}

class MobileTabPage extends StatelessWidget {
  const MobileTabPage({super.key, required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(title, style: const TextStyle(fontSize: 24, color: Colors.black)),
    );
  }
}
