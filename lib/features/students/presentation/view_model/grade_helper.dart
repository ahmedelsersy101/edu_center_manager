import 'package:easy_localization/easy_localization.dart';

class GradeHelper {
  static const List<String> selectGradeKeys = [
    'all',
    'grade one prep',
    'grade two prep',
    'grade three prep',
    'grade one sec',
    'grade two sec',
    'grade three sec',
  ];

  static String gradeKeys(String? grade) {
    if (grade == null) return '--';
    switch (grade) {
      case 'الصف الأول الإعدادي':
        return 'grade one prep';
      case 'الصف الثاني الإعدادي':
        return 'grade two prep';
      case 'الصف الثالث الإعدادي':
        return 'grade three prep';
      case 'الصف الأول الثانوي':
        return 'grade one sec';
      case 'الصف الثاني الثانوي':
        return 'grade two sec';
      case 'الصف الثالث الثانوي':
        return 'grade three sec';
      case 'الكل':
        return 'all';
      default:
        return grade;
    }
  }

  static String translateGrade(String? grade) {
    if (grade == null || grade == '--') return '--';
    return gradeKeys(grade).tr();
  }
}
