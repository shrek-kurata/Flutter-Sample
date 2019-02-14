import 'package:penmark/domain/campus.dart';
import 'package:tuple/tuple.dart';

class CampusTranslator{

  final List<Tuple2<Campus, String>> map = [
    Tuple2(Campus.Mita, "三田"),
    Tuple2(Campus.Hiyoshi, "日吉"),
    Tuple2(Campus.Shounan, "湘南藤沢"),
    Tuple2(Campus.Yagami, "矢上"),
    Tuple2(Campus.Shinanomachi, "信濃町"),
    Tuple2(Campus.Shiba, "芝共立"),
  ];

  Campus fromPersistence(String str){
    final index = map.indexWhere((e) => e.item2 == str);
    assert(index != -1);
    return map[index].item1;
  }

  String toPersistence(Campus campus){
    final index = map.indexWhere((e) => e.item1 == campus);
    assert(index != -1);
    return map[index].item2;
  }
}