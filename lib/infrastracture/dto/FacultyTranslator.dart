import 'package:penmark/domain/faculty.dart';

class FacultyTranslator{

  final  map = [
    [Faculty.Kei, "経"],
    [Faculty.Bun, "文"],
    [Faculty.Shou, "商"],
    [Faculty.Hou, "法"],
    [Faculty.I, "医"],
    [Faculty.Ri, "理"],
    [Faculty.Kan, "看"],
    [Faculty.Yaku, "薬"],
    [Faculty.KanKyo, "環境"],
    [Faculty.SoGo, "総合"],

    [Faculty.BunKen, '文研'],
    [Faculty.KeiKen, '経研'],
    [Faculty.HouKen,'法研'],
    [Faculty.ShaKen,'社研'],
    [Faculty.ShouKen,'商研'],
    [Faculty.RiKen,'理研'],
    [Faculty.KeiKan, '経管'],
    [Faculty.HouMu,'法務'],
    [Faculty.KenMa,'健マ'],
    [Faculty.YakuKen,'薬研'],
    [Faculty.BetuKa,'別科'],
    [Faculty.KokuSe,'国セ'],
    [Faculty.ASe,'アセ'],
    [Faculty.KyouKen,'教研'],
    [Faculty.GI,'GI'],
    [Faculty.GoKen,'言研'],
    [Faculty.GaiKen,'外研'],
    [Faculty.ShiDou,'斯道'],
    [Faculty.GakuSou,'学総'],
    [Faculty.FukuSe,'福セ'],
    [Faculty.MeKo,'メコ'],
    [Faculty.KG,'KG'],
    [Faculty.HoSe,'保セ'],
    [Faculty.TaiKen,'体研']
  ];

  Faculty fromPersistence(String str){
    final index = map.indexWhere((e) => e[1] == str);
    assert(index != -1);
    return map[index][0] as Faculty;
  }

  String toPersistence(Faculty faculty){
    final index = map.indexWhere((e) => e[0] == faculty);
    assert(index != -1);
    return map[index][1] as String;
  }
}