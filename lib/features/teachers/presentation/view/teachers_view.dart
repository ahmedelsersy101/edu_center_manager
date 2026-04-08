import 'package:edu_center_manager/features/teachers/presentation/view/widgets/teachers_view_body.dart';
import 'package:flutter/material.dart';

class TeachersView extends StatelessWidget {
  const TeachersView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Teachers')),
      body: const TeachersViewBody(),
    );
  }
}
