import 'package:penmark/domain/campus.dart';

class CampusTranslator{

  final map = [
    [Campus.Mita, "三田"],
    [Campus.Hiyoshi, "日吉"],
    [Campus.Shounan, "湘南藤沢"],
    [Campus.Yagami, "矢上"],
    [Campus.Shinanomachi, "信濃町"],
    [Campus.Shiba, "芝共立"]
  ];

  Campus fromPersistence(String str){
    final index = map.indexWhere((e) => e[1] == str);
    assert(index != -1);
    return map[index][0];
  }

  String toPersistence(Campus campus){
    final index = map.indexWhere((e) => e[0] == campus);
    assert(index != -1);
    return map[index][1];
  }
}