import 'package:meta/meta.dart';
import 'package:quiver/core.dart';

@immutable
class Date{
  final int year;
  final int month;
  final int day;

  const Date({
    @required this.year,
    @required this.month,
    @required this.day }):
      assert(year != null),
      assert(month != null),
      assert(day != null);

  @override
  bool operator ==(Object other) {
    if(other is! Date){
      return false;
    }
    final that = (other as Date);
    return (year == that.year && month == that.month && day == that.day);
  }

  @override
  int get hashCode {
    return hash3(year, month, day);
  }
}