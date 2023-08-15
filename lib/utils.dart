import 'package:intl/intl.dart';
class Utils {
  
  static String thousandify(int number) {
    final formatter = NumberFormat('#,###');
    return formatter.format(number);
  }
}