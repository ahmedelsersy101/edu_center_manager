// lib/features/auth/data/models/profile_model.dart

enum UserRole { admin, teacher, parent }

class ProfileModel {
  final String id;
  final UserRole role;
  final String? name;
  final String? phone;

  const ProfileModel({required this.id, required this.role, this.name, this.phone});

  factory ProfileModel.fromJson(Map<String, dynamic> json) => ProfileModel(
    id: json['id'],
    role: UserRole.values.byName(json['role']),
    name: json['name'],
    phone: json['phone'],
  );

  Map<String, dynamic> toJson() => {'role': role.name, 'name': name, 'phone': phone};
}
