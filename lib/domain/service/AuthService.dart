import 'package:meta/meta.dart';

abstract class AuthService{
  Future sendVerifyMail({@required String to});
}