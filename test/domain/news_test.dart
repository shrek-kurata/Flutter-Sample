import 'package:test/test.dart';

import 'repository/InMemoryNewsRepository.dart';

void main() {
  test('News Repo', ()async{
    final repo = InMemoryNewsRepository();
    final result = repo.top;
  });
}
