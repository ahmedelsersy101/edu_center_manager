import 'package:easy_localization/easy_localization.dart';
import 'package:edu_center_manager/core/services/app_initializer.dart';
import 'package:edu_center_manager/core/utils/app_router.dart';
import 'package:edu_center_manager/core/utils/app_themes.dart';
import 'package:flutter/material.dart';

void main() async {
  final initialRoute = await AppInitializer.getInitialRoute();
  runApp(
    EasyLocalization(
      supportedLocales: const [Locale("ar"), Locale('en')],
      fallbackLocale: Locale('ar'),
      startLocale: Locale('ar'),
      path: 'assets/translations',
      child: EduCenterManager(initialRoute: initialRoute),
    ),
  );
}

class EduCenterManager extends StatelessWidget {
  final String initialRoute;
  const EduCenterManager({super.key, required this.initialRoute});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'EduCenter Manager',
      debugShowCheckedModeBanner: false,
      localizationsDelegates: context.localizationDelegates,
      supportedLocales: context.supportedLocales,
      locale: context.locale,
      routerConfig: AppRouter.getRouter(initialRoute: initialRoute),
      theme: lightTheme,
      // darkTheme: darkTheme,
    );
  }
}
