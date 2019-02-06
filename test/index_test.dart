import 'package:test/test.dart';
import 'package:rxdart/rxdart.dart';

void main() {
  test('Hello, Test', () {
    expect(1 + 1, 2);
  });

  test('RxTest', () async {
    final stream = Observable.fromIterable([1, 2, 3, 4, 5, 6, 7]);
    final list = stream
      .map((e) => e + 1)
      .where((e) => e % 2 == 0)
      .toList();

    final result = await list;

    expect(result, [2,4,6,8]);
  });
}
