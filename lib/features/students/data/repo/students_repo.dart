import 'package:edu_center_manager/features/students/data/models/student_model.dart';

abstract class StudentsRepo {
  Future<List<StudentModel>> getStudents();
  Future<StudentModel> addStudent(StudentModel student);
  Future<StudentModel> updateStudent(StudentModel student);
  Future<StudentModel> deleteStudent(String id);
}
