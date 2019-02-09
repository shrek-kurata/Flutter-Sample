import 'package:meta/meta.dart';

@immutable
class DayAndPeriod{
  final Day day;
  final PeriodTime periodTime;

  const DayAndPeriod({
    @required this.day,
    @required this.periodTime
  }):assert(day != null), assert(periodTime != null);
}

enum Day{
  Sunday,
  Monday,
  Tuesday,
  Wednesday,
  Thursday,
  Friday,
  Saturday
}

enum PeriodTime{
  One, Two, Three, Four, Five, Six, Seven
}