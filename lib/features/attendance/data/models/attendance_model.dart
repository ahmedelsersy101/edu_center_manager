// lib/features/attendance/data/models/attendance_model.dart
enum AttendanceStatus { present, absent, late, excused }

class AttendanceModel {
  final String id;
  final String studentId;
  final String groupId;
  final DateTime date;
  final AttendanceStatus status;

  const AttendanceModel({
    required this.id,
    required this.studentId,
    required this.groupId,
    required this.date,
    required this.status,
  });

  factory AttendanceModel.fromJson(Map<String, dynamic> json) => AttendanceModel(
    id: json['id'],
    studentId: json['student_id'],
    groupId: json['group_id'],
    date: DateTime.parse(json['date']),
    status: AttendanceStatus.values.byName(json['status']),
  );
}
