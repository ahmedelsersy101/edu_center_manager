// lib/features/students/data/models/student_model.dart
class StudentModel {
  final String id;
  final String name;
  final String? address;
  final String? grade;
  final String? parentPhone;
  final String? qrCode;
  final DateTime? createdAt;

  const StudentModel({
    required this.id,
    required this.name,
    this.address,
    this.grade,
    this.parentPhone,
    this.qrCode,
    this.createdAt,
  });

  factory StudentModel.fromJson(Map<String, dynamic> json) => StudentModel(
    id: json['id'],
    name: json['name'],
    address: json['address'],
    grade: json['grade'],
    parentPhone: json['parent_phone'],
    qrCode: json['qr_code'],
    createdAt: json['created_at'] != null ? DateTime.parse(json['created_at']) : null,
  );

  Map<String, dynamic> toJson() => {
    'name': name,
    'address': address,
    'grade': grade,
    'parent_phone': parentPhone,
    'qr_code': qrCode,
  };
}
