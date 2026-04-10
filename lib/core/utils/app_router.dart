import 'package:edu_center_manager/features/auth/presentation/view/login_view.dart';
import 'package:edu_center_manager/features/dashboard/presentation/view/dashboard_view.dart';
import 'package:edu_center_manager/features/home/presentation/view/widgets/home_view.dart';
import 'package:edu_center_manager/features/splash/presentation/view/splash_view.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

abstract class AppRouter {
  static const kSplashView = '/';
  static const kLoginView = '/loginView';
  static const kDashboardView = '/dashboardView';
  static const kHomeView = '/homeView';

  /// Factory method لإرجاع GoRouter
  static GoRouter getRouter({required String initialRoute}) {
    return GoRouter(
      initialLocation: initialRoute,
      routes: <RouteBase>[
        GoRoute(path: kSplashView, builder: (context, state) => const SplashView()),
        GoRoute(path: kLoginView, builder: (context, state) => const LoginView()),
        GoRoute(path: kDashboardView, builder: (context, state) => const DashboardView()),
        GoRoute(path: kHomeView, builder: (context, state) => const HomeView()),
      ],
    );
  }

  /// دالة مساعدة للتوجيه حسب دور المستخدم
  static void navigateToRole(BuildContext context, String role) {
    if (!context.mounted) return;
    switch (role) {
      case 'admin':
        GoRouter.of(context).pushReplacement(kDashboardView);
        break;
      case 'teacher':
        GoRouter.of(context).pushReplacement(kHomeView);
        break;
      default:
        GoRouter.of(context).pushReplacement(kLoginView);
        break;
    }
  }

  /// دالة للتسجيل خروج المستخدم
  static void logout(BuildContext context) {
    if (!context.mounted) return;

    GoRouter.of(context).pushReplacement(kLoginView);
  }
}
