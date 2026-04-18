import 'package:easy_localization/easy_localization.dart';
import 'package:edu_center_manager/core/widgets/custom_add_button.dart';
import 'package:edu_center_manager/core/widgets/custom_header.dart';
import 'package:edu_center_manager/features/teachers/presentation/helper/teacher_actions.dart';
import 'package:flutter/material.dart';

class TeachersHeader extends StatelessWidget {
  const TeachersHeader({super.key, required this.isMobile});
  final bool isMobile;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: CustomHeader(
            icon: Icons.group,
            title: 'teachersManagement'.tr(),
            description: 'teachersHeaderDesc'.tr(),
          ),
        ),
        CustomAddButton(text: 'addTeacher'.tr(), onAdd: () => onAddTeacher(context, isMobile)),
      ],
    );
  }
}
