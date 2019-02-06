import 'package:meta/meta.dart';
import 'package:penmark/domain/date.dart';

@immutable
class DateSchedules{
  final Date date;
  final List<Schedule> items;

  const DateSchedules({
    @required this.date,
    @required this.items});
}

@immutable
class Schedule{
  final String name;

  const Schedule(this.name);
}