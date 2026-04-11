import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

class AttendanceReportView extends StatelessWidget {
  const AttendanceReportView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: Center(child: Text('attendanceReport'.tr())));
  }
}
