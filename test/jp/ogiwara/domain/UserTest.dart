import 'package:flutter_test/flutter_test.dart';
import 'package:penmark/jp/penmark/domain/User.dart';

void main() {
  test('UserId', () {
    final user = User(id: UserId(1));
    assert(1 == user.id.value);
  });
}
