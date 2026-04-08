import 'package:edu_center_manager/core/utils/app_router.dart';
import 'package:edu_center_manager/services/supabase_initialize.dart';
import 'package:flutter/material.dart';

void main() {
  initialize();
  runApp(const EduCenterManager());
}

class EduCenterManager extends StatelessWidget {
  const EduCenterManager({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'EduCenter Manager',
      debugShowCheckedModeBanner: false,
      routerConfig: AppRouter.router,
    );
  }
}
