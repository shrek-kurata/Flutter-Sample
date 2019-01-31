import 'package:flutter_test/flutter_test.dart';
import 'package:penmark/jp/penmark/domain/User.dart';

void main(){

  testWidgets('Userテスト', (WidgetTester tester) async {
    final user = User();
    assert(user.id != null);
  });
}