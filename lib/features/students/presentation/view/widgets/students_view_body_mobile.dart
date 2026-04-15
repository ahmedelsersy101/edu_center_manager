import 'package:easy_localization/easy_localization.dart';
import 'package:edu_center_manager/core/constants/list_grades.dart';
import 'package:edu_center_manager/core/widgets/custom_header.dart';
import 'package:edu_center_manager/core/widgets/custom_toolbar.dart';
import 'package:edu_center_manager/features/students/presentation/view_model/students_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class StudentsViewBodyMobile extends StatelessWidget {
  const StudentsViewBodyMobile({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<StudentsCubit, StudentsState>(
      builder: (context, state) {
        final selectedGrade = state is StudentsLoaded ? state.selectedGrade : 'all';
        return Padding(
          padding: EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomHeader(
                icon: Icons.group,
                title: 'studentsManagement'.tr(),
                description: 'studentsHeaderDesc'.tr(),
              ),
              const SizedBox(height: 16),
              CustomToolbar(
                text: 'addStudent'.tr(),
                hintTextField: 'searchForStudent'.tr(),
                selected: selectedGrade,
                list: grades,
                onChanged: (value) {},
                onAdd: () => _onAddStudent(context),
                onSearch: (query) => _onSearch(context, query),
              ),
              const SizedBox(height: 16),
            ],
          ),
        );
      },
    );
  }

  void _onSearch(BuildContext context, String query) {
    context.read<StudentsCubit>().searchStudents(query);
  }

  void _onAddStudent(BuildContext context) {}
}
