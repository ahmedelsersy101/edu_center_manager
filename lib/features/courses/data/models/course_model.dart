// lib/features/courses/data/models/course_model.dart

class CourseModel {
  final String id;
  final String name;
  final String? subject;

  const CourseModel({required this.id, required this.name, this.subject});

  factory CourseModel.fromJson(Map<String, dynamic> json) =>
      CourseModel(id: json['id'], name: json['name'], subject: json['subject']);

  Map<String, dynamic> toJson() => {'name': name, 'subject': subject};
}
