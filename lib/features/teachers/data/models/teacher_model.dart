class TeacherModel {
  final String id;
  final String name;
  final String? subject;
  final String? phone;
  final String? userId;

  TeacherModel({required this.id, required this.name, this.subject, this.phone, this.userId});

  factory TeacherModel.fromJson(Map<String, dynamic> json) => TeacherModel(
    id: json['id'].toString(),
    name: json['name'] as String,
    subject: json['subject'] as String?,
    phone: json['phone'] as String?,
    userId: json['user_id'] as String?,
  );

  Map<String, dynamic> toTeacherTableJson() => {'name': name, 'subject': subject, 'phone': phone};

  TeacherModel copyWith({
    String? id,
    String? name,
    String? subject,
    String? phone,
    String? userId,
  }) {
    return TeacherModel(
      id: id ?? this.id,
      name: name ?? this.name,
      subject: subject ?? this.subject,
      phone: phone ?? this.phone,
      userId: userId ?? this.userId,
    );
  }
}
