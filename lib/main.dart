import 'package:edu_center_manager/core/utils/app_router.dart';
import 'package:edu_center_manager/core/utils/app_themes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await initializeApp();
  runApp(const EduCenterManager());
}

Future<void> initializeApp() async {
  await dotenv.load(fileName: ".env"); // تأكد من المسار
  await Supabase.initialize(
    url: dotenv.env['SUPABASE_URL']!,
    anonKey: dotenv.env['SUPABASE_ANON_KEY']!,
  );
}

class EduCenterManager extends StatelessWidget {
  const EduCenterManager({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'EduCenter Manager',
      debugShowCheckedModeBanner: false,
      routerConfig: AppRouter.router,
      theme: lightTheme,
    );
  }
}
