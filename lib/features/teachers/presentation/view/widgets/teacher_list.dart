import 'package:edu_center_manager/core/widgets/custom_animated_switcher.dart';
import 'package:edu_center_manager/features/teachers/data/models/teacher_model.dart';
import 'package:edu_center_manager/features/teachers/presentation/helper/teacher_actions.dart';
import 'package:edu_center_manager/features/teachers/presentation/view/widgets/custom_mobile_teachers_list.dart';
import 'package:flutter/material.dart';

class TeacherList extends StatelessWidget {
  const TeacherList({
    super.key,
    required this.isLoading,
    required this.teachers,
    required this.allTeachers,
    required this.searchQuary,
  });

  final bool isLoading;
  final List<TeacherModel> teachers;
  final int allTeachers;
  final String searchQuary;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: CustomAnimatedSwitcher(
        isLoading: isLoading,
        items: teachers,
        allCount: allTeachers,
        child: CustomMobileTeachersList(
          isLoading: isLoading,
          teachers: teachers,
          searchQuary: searchQuary,
          onEdit: (teacher) => onEditTeacher(context, teacher, true),
          onDelete: (teacher) => onDeleteTeacher(context, teacher),
        ),
      ),
    );
  }
}
