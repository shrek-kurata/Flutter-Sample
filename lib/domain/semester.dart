class Semester{
  final String value;

  Semester._(this.value);

  static final spring = Semester._("春学期");
  static final fall = Semester._("秋学期");
  static final yearRound = Semester._("通年");
  static final springIntensive = Semester._("春学期集中");
  static final fallIntensive = Semester._("秋学期集中");
}