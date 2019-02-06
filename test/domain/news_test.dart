import 'package:penmark/domain/repository/NewsRepository.dart';
import 'package:test/test.dart';
import 'package:rxdart/rxdart.dart';

import 'repository/InMemoryNewsRepository.dart';

void main() {
  test('News Repo', ()async{
    final repo = InMemoryNewsRepository();
    final result = repo.top;
  });
}
