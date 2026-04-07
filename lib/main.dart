import 'package:edu_center_manager/core/utils/app_router.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const EduCenterManager());
}

class EduCenterManager extends StatelessWidget {
  const EduCenterManager({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Center Manager',
      debugShowCheckedModeBanner: false,
      routerConfig: AppRouter.router,
    );
  }
}
