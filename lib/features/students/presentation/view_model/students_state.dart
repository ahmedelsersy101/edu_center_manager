part of 'students_cubit.dart';

abstract class StudentsState {}

class StudentsInitial extends StudentsState {}

class StudentsLoading extends StudentsState {}

class StudentsLoaded extends StudentsState {
  final List<StudentModel> allStudents;
  final List<StudentModel> filteredStudents;
  final String searchQuery;
  final String selectedGrade;

  StudentsLoaded({
    required this.allStudents,
    required this.filteredStudents,
    this.searchQuery = '',
    this.selectedGrade = 'all',
  });
}

class StudentsError extends StudentsState {
  final String message;
  StudentsError(this.message);

}
