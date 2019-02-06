import 'package:penmark/domain/faculty.dart';
import 'package:penmark/domain/repository/MeRepository.dart';
import 'package:penmark/domain/repository/NewsRepository.dart';
import 'package:test/test.dart';
import 'package:rxdart/rxdart.dart';

void main() {
  test('Me Repo', ()async{
   final repo = MeRepository();
   final me = await repo.fromAuth();
   me.changeFaculty(Faculty.Bun);
   await repo.save(me);

   final me2 = await repo.fromAuth();
   expect(me2.faculty, Faculty.Bun);
  });
}
