import 'package:edu_center_manager/features/students/data/repo/students_injaction.dart';
import 'package:edu_center_manager/features/teachers/data/repo/teachers_injaction.dart';

void setupServiceLocator() {
  studentsGetIt();
  teachersGetIt();
}
