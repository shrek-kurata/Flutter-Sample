import 'package:penmark/domain/repository/NewsRepository.dart';
import 'package:test/test.dart';
import 'package:rxdart/rxdart.dart';

void main() {
  test('News Repo', ()async{
    final repo = NewsRepository();
    final result = repo.top;
  });
}
