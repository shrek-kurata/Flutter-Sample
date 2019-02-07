import 'package:penmark/domain/campus.dart';
import 'package:penmark/infrastracture/dto/CampusTranslator.dart';
import 'package:penmark/infrastracture/dto/UserTranslator.dart';
import 'package:test/test.dart';
import '../helper.dart';

void main() {
  group('DTO Test', () {
    test("Campus", (){
      final dto = CampusTranslator();
      final campus = dto.fromPersistence("日吉");
      expect(campus, Campus.Hiyoshi);
      final str = dto.toPersistence(Campus.Shounan);
      expect(str, "湘南藤沢");
    });
    test("User", (){
      final dto = UserTranslator();
      final map = dto.toPersistence(sampleMe());
      expect(map["grade"]["degreeProgram"], "学士");
    });
  });
}