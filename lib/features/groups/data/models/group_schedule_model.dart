// lib/features/groups/data/models/group_schedule_model.dart

enum WeekDay { sat, sun, mon, tue, wed, thu, fri }

class GroupScheduleModel {
  final String id;
  final String groupId;
  final WeekDay day;
  final String fromTime; // e.g. '10:00'
  final String toTime; // e.g. '12:00'

  const GroupScheduleModel({
    required this.id,
    required this.groupId,
    required this.day,
    required this.fromTime,
    required this.toTime,
  });

  factory GroupScheduleModel.fromJson(Map<String, dynamic> json) => GroupScheduleModel(
    id: json['id'],
    groupId: json['group_id'],
    day: WeekDay.values.byName(json['day']),
    fromTime: json['from_time'],
    toTime: json['to_time'],
  );

  Map<String, dynamic> toJson() => {
    'group_id': groupId,
    'day': day.name,
    'from_time': fromTime,
    'to_time': toTime,
  };

  /// اسم اليوم بالعربي للعرض في الـ UI
  String get dayAr => const {
    WeekDay.sat: 'السبت',
    WeekDay.sun: 'الأحد',
    WeekDay.mon: 'الاثنين',
    WeekDay.tue: 'الثلاثاء',
    WeekDay.wed: 'الأربعاء',
    WeekDay.thu: 'الخميس',
    WeekDay.fri: 'الجمعة',
  }[day]!;
}
