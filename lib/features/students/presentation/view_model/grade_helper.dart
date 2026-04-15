import 'package:easy_localization/easy_localization.dart';

class GradeHelper {
  static const List<String> selectGradeKeys = [
    'grade1Prep',
    'grade2Prep',
    'grade3Prep',
    'grade1Sec',
    'grade2Sec',
    'grade3Sec',
  ];

  static String gradeKeys(String? grade) {
    if (grade == null) return '--';
    switch (grade) {
      case 'الصف الأول الإعدادي':
        return 'grade1Prep';
      case 'الصف الثاني الإعدادي':
        return 'grade2Prep';
      case 'الصف الثالث الإعدادي':
        return 'grade3Prep';
      case 'الصف الأول الثانوي':
        return 'grade1Sec';
      case 'الصف الثاني الثانوي':
        return 'grade2Sec';
      case 'الصف الثالث الثانوي':
        return 'grade3Sec';
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
