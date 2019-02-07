import 'package:penmark/domain/faculty.dart';

class AllFacultyTranslator{

  final map = [
    [AllFaculty.Kei, "経"],
    [AllFaculty.Bun, "文"],
    [AllFaculty.Shou, "商"],
    [AllFaculty.Hou, "法"],
    [AllFaculty.I, "医"],
    [AllFaculty.Ri, "理"],
    [AllFaculty.Kan, "看"],
    [AllFaculty.Yaku, "薬"],
    [AllFaculty.KanKyo, "環境"],
    [AllFaculty.SoGo, "総合"],

    [AllFaculty.BunKen, '文研'],
    [AllFaculty.KeiKen, '経研'],
    [AllFaculty.HouKen,'法研'],
    [AllFaculty.ShaKen,'社研'],
    [AllFaculty.ShouKen,'商研'],
    [AllFaculty.RiKen,'理研'],
    [AllFaculty.KeiKan, '経管'],
    [AllFaculty.HouMu,'法務'],
    [AllFaculty.KenMa,'健マ'],
    [AllFaculty.YakuKen,'薬研'],
    [AllFaculty.BetuKa,'別科'],
    [AllFaculty.KokuSe,'国セ'],
    [AllFaculty.ASe,'アセ'],
    [AllFaculty.KyouKen,'教研'],
    [AllFaculty.GI,'GI'],
    [AllFaculty.GoKen,'言研'],
    [AllFaculty.GaiKen,'外研'],
    [AllFaculty.ShiDou,'斯道'],
    [AllFaculty.GakuSou,'学総'],
    [AllFaculty.FukuSe,'福セ'],
    [AllFaculty.MeKo,'メコ'],
    [AllFaculty.KG,'KG'],
    [AllFaculty.HoSe,'保セ'],
    [AllFaculty.TaiKen,'体研']
  ];

  AllFaculty fromPersistence(String str){
    final index = map.indexWhere((e) => e[1] == str);
    assert(index != -1);
    return map[index][0];
  }

  String toPersistence(AllFaculty faculty){
    final index = map.indexWhere((e) => e[0] == faculty);
    assert(index != -1);
    return map[index][1];
  }
}