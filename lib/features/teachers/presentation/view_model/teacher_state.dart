part of 'teacher_cubit.dart';

@immutable
sealed class TeacherState {}

final class TeacherInitial extends TeacherState {}

final class TeacherLoading extends TeacherState {}

final class TeacherLoaded extends TeacherState {
  final List<TeacherModel> allTeachers;
  final List<TeacherModel> filteredTeachers;
  final String searchQuery;
  final String selectedSubject;

  TeacherLoaded({
    required this.allTeachers,
    required this.filteredTeachers,
    this.searchQuery = '',
    this.selectedSubject = 'all',
  });
}

final class TeacherError extends TeacherState {
  final String message;
  TeacherError(this.message);
}
