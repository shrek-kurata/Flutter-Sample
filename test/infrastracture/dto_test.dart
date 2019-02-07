import 'package:penmark/domain/campus.dart';
import 'package:penmark/infrastracture/dto/CampusTranslator.dart';
import 'package:test/test.dart';

void main() {
  group('DTO Test', () {
    test("Campus", (){
      final dto = CampusTranslator();
      final campus = dto.fromPersistence("日吉");
      expect(campus, Campus.Hiyoshi);
      final str = dto.toPersistence(Campus.Shounan);
      expect(str, "湘南藤沢");
    });
  });
}