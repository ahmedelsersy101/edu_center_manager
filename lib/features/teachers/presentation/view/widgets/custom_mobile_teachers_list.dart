
import 'package:easy_localization/easy_localization.dart';
import 'package:edu_center_manager/core/widgets/custom_empty_state.dart';
import 'package:edu_center_manager/core/widgets/shimmer_info_card.dart';
import 'package:edu_center_manager/features/teachers/presentation/view/widgets/teacher_card.dart';
import 'package:flutter/material.dart';

import '../../../data/models/teacher_model.dart';

class CustomMobileTeachersList extends StatelessWidget {
  const CustomMobileTeachersList({
    super.key,
    required this.teachers,
    required this.onEdit,
    required this.onDelete,
    required this.isLoading,
    required this.searchQuary,
  });
  final List<TeacherModel> teachers;
  final Function(TeacherModel) onEdit;
  final Function(TeacherModel) onDelete;
  final bool isLoading;
  final String searchQuary;
  @override
  Widget build(BuildContext context) {
    if (isLoading) {
      return const ShimmerInfoCard();
    }
    if (teachers.isEmpty) {
      return CustomEmptyState(
        text: searchQuary.isEmpty ? 'teachersViewEmptyNone'.tr() : 'teachersViewEmptySearch'.tr(),
        icon: Icons.groups_3_rounded,
      );
    }
    return ListView.builder(
      itemCount: teachers.length,
      itemBuilder: (context, index) {
        final teacher = teachers[index];
        return TeacherCard(
          teacher: teacher,
          onEdit: () => onEdit(teacher),
          onDelete: () => onDelete(teacher),
        );
      },
    );
  }
}
