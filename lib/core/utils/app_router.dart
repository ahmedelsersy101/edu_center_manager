import 'package:edu_center_manager/features/attendance/presentation/view/attendance_view.dart';
import 'package:edu_center_manager/features/attendance/presentation/view/widgets/attendance_report_view.dart';
import 'package:edu_center_manager/features/auth/presentation/view/login_view.dart';
import 'package:edu_center_manager/features/courses/presentation/view/courses_view.dart';
import 'package:edu_center_manager/features/dashboard/presentation/view/dashboard_view.dart';
import 'package:edu_center_manager/features/groups/presentation/view/groups_view.dart';
import 'package:edu_center_manager/features/payments/presentation/view/payments_view.dart';
import 'package:edu_center_manager/features/payments/presentation/view/widgets/payment_report_view.dart';
import 'package:edu_center_manager/features/settings/presentation/view/settings_view.dart';
import 'package:edu_center_manager/features/splash/presentation/view/splash_view.dart';
import 'package:edu_center_manager/features/students/presentation/view/students_view.dart';
import 'package:edu_center_manager/features/teachers/presentation/view/teachers_view.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

abstract class AppRouter {
  static const kSplashView = '/';
  static const kLoginView = '/loginView';
  static const kDashboardView = '/dashboardView';
  static const kSettingsView = '/settingsView';
  static const kStudents = '/students';
  static const kTeachers = '/teachers';
  static const kCourses = '/courses';
  static const kGroups = '/groups';
  static const kAttendance = '/attendance';
  static const kPayments = '/payments';
  static const kPaymentReport = '/paymentsReport';
  static const kAttendReport = '/attendanceReport';

  // Teacher
  static const kTeacherHome = '/teacher';

  // Parent
  static const kParentHome = '/parent';

  /// Factory method لإرجاع GoRouter
  static GoRouter getRouter({required String initialRoute}) {
    return GoRouter(
      initialLocation: initialRoute,
      routes: <RouteBase>[
        GoRoute(path: kSplashView, builder: (context, state) => const SplashView()),
        GoRoute(path: kLoginView, builder: (context, state) => const LoginView()),
        GoRoute(path: kDashboardView, builder: (context, state) => const DashboardView()),
        GoRoute(path: kSettingsView, builder: (context, state) => const SettingsView()),
        GoRoute(path: kStudents, builder: (_, _) => const StudentsView()),
        GoRoute(path: kTeachers, builder: (_, _) => const TeachersView()),
        GoRoute(path: kCourses, builder: (_, _) => const CoursesView()),
        GoRoute(path: kGroups, builder: (_, _) => const GroupsView()),
        GoRoute(path: kAttendance, builder: (_, _) => const AttendanceView()),
        GoRoute(path: kPayments, builder: (_, _) => const PaymentsView()),
        GoRoute(path: kPaymentReport, builder: (_, _) => const PaymentReportView()),
        GoRoute(path: kAttendReport, builder: (_, _) => const AttendanceReportView()),
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
        GoRouter.of(context).pushReplacement(kDashboardView);
        break;
    }
  }

  /// دالة للتسجيل خروج المستخدم
  static void logout(BuildContext context) {
    if (!context.mounted) return;

    GoRouter.of(context).pushReplacement(kLoginView);
  }
}
