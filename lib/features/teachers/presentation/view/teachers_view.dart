import 'package:edu_center_manager/features/teachers/data/repo/teachers_injaction.dart';
import 'package:edu_center_manager/features/teachers/presentation/view/widgets/teachers_view_body.dart';
import 'package:edu_center_manager/features/teachers/presentation/view_model/teacher_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class TeachersView extends StatelessWidget {
  const TeachersView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<TeacherCubit>()..getTeachers(),
      child: Scaffold(body: const TeachersViewBody()),
    );
  }
}
