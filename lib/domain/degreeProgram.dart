class DegreeProgram{
  final String value;

  DegreeProgram._(this.value);

  static final undergraduate = DegreeProgram._("学士");
  static final master = DegreeProgram._("修士");
  static final doctor = DegreeProgram._("博士");
}


