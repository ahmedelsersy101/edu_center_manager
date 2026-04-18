class StudentModel {
  final String id;
  final String name;
  final String address;
  final String grade;
  final String parentPhone;
  final String? qrCode;
  final String? groupId;
  final DateTime? createdAt;

  const StudentModel({
    required this.id,
    required this.name,
    required this.address,
    required this.grade,
    required this.parentPhone,
    this.qrCode,
    this.groupId,
    this.createdAt,
  });

  factory StudentModel.fromJson(Map<String, dynamic> json) => StudentModel(
    id: json['id'].toString(),
    name: json['name'] as String,
    address: json['address'] as String,
    grade: json['grade'] as String,
    parentPhone: json['parent_phone'] as String,
    qrCode: json['qr_code'] as String?,
    groupId: json['group_id']?.toString(),
    createdAt: json['created_at'] != null ? DateTime.parse(json['created_at'] as String) : null,
  );

  Map<String, dynamic> toStudentsTableJson() => {
    'name': name,
    'address': address,
    'grade': grade,
    'parent_phone': parentPhone,
    'qr_code': qrCode,
  };

  StudentModel copyWith({
    String? id,
    String? name,
    String? address,
    String? grade,
    String? parentPhone,
    String? qrCode,
    String? groupId,
    DateTime? createdAt,
  }) {
    return StudentModel(
      id: id ?? this.id,
      name: name ?? this.name,
      address: address ?? this.address,
      grade: grade ?? this.grade,
      parentPhone: parentPhone ?? this.parentPhone,
      qrCode: qrCode ?? this.qrCode,
      groupId: groupId ?? this.groupId,
      createdAt: createdAt ?? this.createdAt,
    );
  }
}
