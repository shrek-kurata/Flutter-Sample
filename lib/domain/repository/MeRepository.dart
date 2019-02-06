import 'package:penmark/domain/me.dart';

abstract class MeRepository {
  Future<Me> fromAuth();
  Future save(Me me);
}
