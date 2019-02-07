import 'package:penmark/domain/faculty.dart';

class FacultyTranslator{

  final map = [
    [Faculty.Kei, "経済学部"],
    [Faculty.Bun, "文学部"],
    [Faculty.Shou, "商学部"],
    [Faculty.Hou, "法学部"],
    [Faculty.I, "医学部"],
    [Faculty.Ri, "理工学部"],
    [Faculty.Kan, "看護医療学部"],
    [Faculty.Yaku, "薬学部"],
    [Faculty.KanKyo, "環境情報学部"],
    [Faculty.SoGo, "総合政策学部"],
  ];

  Faculty fromPersistence(String str){
    final index = map.indexWhere((e) => e[1] == str);
    assert(index != -1);
    return map[index][0];
  }

  String toPersistence(Faculty faculty){
    final index = map.indexWhere((e) => e[0] == faculty);
    assert(index != -1);
    return map[index][1];
  }
}