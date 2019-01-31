import 'package:meta/meta.dart';

class User{
  UserId id;

  User({@required this.id});
}

class UserId{
  int value;

  UserId(this.value);
}