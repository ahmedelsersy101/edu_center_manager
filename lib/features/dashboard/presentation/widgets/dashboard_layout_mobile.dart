import 'package:flutter/material.dart';

class DashboardLayoutMobile extends StatelessWidget {
  const DashboardLayoutMobile({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text('Mobile Dashboard Layout', style: TextStyle(fontSize: 24, color: Colors.black)),
      ),
    );
  }
}
