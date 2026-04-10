// lib/features/groups/data/models/group_model.dart
class GroupModel {
  final String id;
  final String name;
  final String? courseId;
  final String? teacherId;
  final double monthlyFee;
  final int maxStudents;
  final String? description;

  const GroupModel({
    required this.id,
    required this.name,
    this.courseId,
    this.teacherId,
    this.monthlyFee = 0,
    this.maxStudents = 30,
    this.description,
  });

  factory GroupModel.fromJson(Map<String, dynamic> json) => GroupModel(
    id: json['id'],
    name: json['name'],
    courseId: json['course_id'],
    teacherId: json['teacher_id'],
    monthlyFee: (json['monthly_fee'] ?? 0).toDouble(),
    maxStudents: json['max_students'] ?? 30,
    description: json['description'],
  );
}
