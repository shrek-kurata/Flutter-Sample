import 'package:meta/meta.dart';

@immutable
class Date{
  final num year;
  final num month;
  final num day;

  const Date({
    @required this.year,
    @required this.month,
    @required this.day });
}