import 'package:meta/meta.dart';
import 'package:quiver/core.dart';

@immutable
class Date{
  final num year;
  final num month;
  final num day;

  const Date({
    @required this.year,
    @required this.month,
    @required this.day });

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