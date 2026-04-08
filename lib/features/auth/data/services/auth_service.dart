import 'package:shared_preferences/shared_preferences.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

Future<Map<String, dynamic>> loginAndGetRole({
  required String email,
  required String password,
}) async {
  try {
    // 1️⃣ تسجيل الدخول
    final response = await Supabase.instance.client.auth.signInWithPassword(
      email: email,
      password: password,
    );

    final user = response.user;
    if (user == null) throw Exception("User not found");

    final uid = user.id;

    // 2️⃣ جلب الدور من جدول profiles
    final profile = await Supabase.instance.client
        .from('profiles')
        .select('role')
        .eq('id', uid)
        .maybeSingle(); // بدل single() لتجنب Exception لو الصف مش موجود

    if (profile == null) {
      // غالبًا سببها RLS Policies أو الصف مش موجود
      throw Exception(
        "Profile not accessible. تحقق من RLS Policies أو وجود الصف في جدول profiles.",
      );
    }

    final role = profile['role'] as String;

    // 3️⃣ حفظ الدور محليًا
    final prefs = await SharedPreferences.getInstance();
    await prefs.setString("user_role", role);

    // 4️⃣ إعادة البيانات
    return {'uid': uid, 'role': role};
  } catch (e) {
    rethrow;
  }
}
