// lib/features/payments/data/models/payment_model.dart

enum PaymentStatus { paid, pending, partial }

class PaymentModel {
  final String id;
  final String studentId;
  final String? groupId;
  final String month; // e.g. '2025-09'
  final double amount;
  final DateTime? paidAt;
  final String? description;
  final PaymentStatus status;

  const PaymentModel({
    required this.id,
    required this.studentId,
    this.groupId,
    required this.month,
    required this.amount,
    this.paidAt,
    this.description,
    this.status = PaymentStatus.pending,
  });

  factory PaymentModel.fromJson(Map<String, dynamic> json) => PaymentModel(
    id: json['id'],
    studentId: json['student_id'],
    groupId: json['group_id'],
    month: json['month'],
    amount: (json['amount'] as num).toDouble(),
    paidAt: json['paid_at'] != null ? DateTime.parse(json['paid_at']) : null,
    description: json['description'],
    status: PaymentStatus.values.byName(json['status']),
  );

  Map<String, dynamic> toJson() => {
    'student_id': studentId,
    'group_id': groupId,
    'month': month,
    'amount': amount,
    'description': description,
    'status': status.name,
  };
}
