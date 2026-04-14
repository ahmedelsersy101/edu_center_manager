import 'package:edu_center_manager/features/students/data/repo/students_repo_impl.dart';
import 'package:edu_center_manager/features/students/presentation/view/widgets/students_view_body.dart';
import 'package:edu_center_manager/features/students/presentation/view_model/students_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class StudentsView extends StatelessWidget {
  const StudentsView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => StudentsCubit(StudentsRepoImpl()..getStudents()),
      child: const Scaffold(body: StudentsViewBody()),
    );
  }
}
