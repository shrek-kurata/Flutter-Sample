import 'package:meta/meta.dart';

class User{
  UserId id;

  User({@required this.id});
}

class UserId{
  num value;

  UserId(this.value);
}