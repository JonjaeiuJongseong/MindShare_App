import 'package:intl/intl.dart';

class MSDateTime{
  static get timestamp => DateTime.now().millisecondsSinceEpoch;

  static String formatted(DateTime dateTime, String format){
    return DateFormat(format=format).format(dateTime);
  }

  static String formattedDate(DateTime dateTime, {String format = 'yyyy-MM-dd'}){
    return formatted(dateTime, format);
  }

  static String formattedTime(DateTime dateTime, {String format = 'HH:mm:ss'}){
    return formatted(dateTime, format);
  }

  static String getKoreanWeekDay(DateTime dateTime){
    final weekday = formatted(dateTime, 'E');
    switch(weekday){
      case 'Mon': return '월';
      case 'Tue': return '화';
      case 'Wed': return '수';
      case 'Thu': return '목';
      case 'Fri': return '금';
      case 'Sat': return '토';
      case 'Sun': return '일';
      default: return '';
    }
  }
}