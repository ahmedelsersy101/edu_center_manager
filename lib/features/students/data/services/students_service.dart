import 'package:edu_center_manager/features/students/data/models/student_model.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

class StudentsService {
  StudentsService({SupabaseClient? client}) : client = client ?? Supabase.instance.client;

  final SupabaseClient client;

  static const String table = 'students';
  static const String groupStudentsTable = 'group_students';

  Future<List<StudentModel>> getStudents() async {
    final response = await client.from(table).select().order('created_at', ascending: false);
    return (response as List)
        .map((json) => StudentModel.fromJson(Map<String, dynamic>.from(json as Map)))
        .toList();
  }

  Future<StudentModel> addStudent(StudentModel student) async {
    final response = await client
        .from(table)
        .insert(student.toStudentsTableJson())
        .select()
        .single();
    return StudentModel.fromJson(Map<String, dynamic>.from(response as Map));
  }

  Future<StudentModel> updateStudent(StudentModel student) async {
    final response = await client
        .from(table)
        .update(student.toStudentsTableJson())
        .eq('id', student.id)
        .select()
        .single();
    return StudentModel.fromJson(Map<String, dynamic>.from(response as Map));
  }

  Future<StudentModel> deleteStudent(String id) async {
    final response = await client.from(table).delete().eq('id', id).select().single();
    return StudentModel.fromJson(Map<String, dynamic>.from(response as Map));
  }
}
