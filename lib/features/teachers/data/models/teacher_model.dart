// lib/features/teachers/data/models/teacher_model.dart

enum Gender { male, female }

class TeacherModel {
  final String id;
  final String name;
  final String? subject;
  final String? phone;
  final Gender? gender;
  final String? userId; // FK → profiles.id

  const TeacherModel({
    required this.id,
    required this.name,
    this.subject,
    this.phone,
    this.gender,
    this.userId,
  });

  factory TeacherModel.fromJson(Map<String, dynamic> json) => TeacherModel(
    id: json['id'],
    name: json['name'],
    subject: json['subject'],
    phone: json['phone'],
    gender: json['gender'] != null ? Gender.values.byName(json['gender']) : null,
    userId: json['user_id'],
  );

  Map<String, dynamic> toJson() => {
    'name': name,
    'subject': subject,
    'phone': phone,
    'gender': gender?.name,
    'user_id': userId,
  };
}
