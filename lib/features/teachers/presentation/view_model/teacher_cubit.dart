import 'package:bloc/bloc.dart';
import 'package:edu_center_manager/features/teachers/data/models/teacher_model.dart';
import 'package:edu_center_manager/features/teachers/data/repo/teacher_repo.dart';
import 'package:edu_center_manager/features/teachers/presentation/view_model/subject_helper.dart';
import 'package:meta/meta.dart';

part 'teacher_state.dart';

class TeacherCubit extends Cubit<TeacherState> {
  final TeacherRepo teacherRepo;
  TeacherCubit(this.teacherRepo) : super(TeacherInitial());

  List<TeacherModel> allTeachers = [];
  String searchQuery = '';
  String selectedSubject = 'all';

  Future<void> getTeachers() async {
    emit(TeacherLoading());
    try {
      allTeachers = await teacherRepo.getTeachers();
      List<TeacherModel> filtered = allTeachers;
      _emitLoadedState();
    } catch (e) {
      _emitErrorState(e);
    }
  }

  Future<void> addTeacher(TeacherModel teacher) async {
    emit(TeacherLoading());
    try {
      final newTeacher = await teacherRepo.addTeacher(teacher);
      allTeachers.insert(0, newTeacher);
      _emitLoadedState();
    } catch (e) {
      _emitErrorState(e);
    }
  }

  Future<void> updateTeacher(TeacherModel teacher) async {
    emit(TeacherLoading());
    try {
      final newTeacher = await teacherRepo.updateTeacher(teacher);
      allTeachers[allTeachers.indexWhere((element) => element.id == teacher.id)] = newTeacher;
      _emitLoadedState();
    } catch (e) {
      _emitErrorState(e);
    }
  }

  Future<void> deleteTeacher(String id) async {
    emit(TeacherLoading());
    try {
      await teacherRepo.deleteTeacher(id);
      allTeachers.removeWhere((element) => element.id == id);
      _emitLoadedState();
    } catch (e) {
      _emitErrorState(e);
    }
  }

  void searchTeacher(String query) {
    searchQuery = query;
    _emitLoadedState();
  }

  void filterBySubject(String subject) {
    selectedSubject = subject;
    _emitLoadedState();
  }

  void _emitLoadedState() {
    List<TeacherModel> filtered = allTeachers;

    if (selectedSubject != 'all') {
      filtered = filtered
          .where(
            (teacher) =>
                SubjectHelper.subjectKeys(teacher.subject) ==
                SubjectHelper.subjectKeys(selectedSubject),
          )
          .toList();
    }

    if (searchQuery.trim().isNotEmpty) {
      final query = searchQuery.trim().toLowerCase();
      filtered = filtered.where((teacher) => teacher.name.toLowerCase().contains(query)).toList();
    }

    emit(
      TeacherLoaded(
        allTeachers: allTeachers,
        filteredTeachers: filtered,
        searchQuery: searchQuery,
        selectedSubject: selectedSubject,
      ),
    );
  }

  void _emitErrorState(Object e) => emit(TeacherError(_errorMessage(e)));

  String _errorMessage(Object error) {
    final message = error.toString();
    if (message.startsWith('Exception: ')) {
      return message.substring(11);
    }
    return message;
  }
}
