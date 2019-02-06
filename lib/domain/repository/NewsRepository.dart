import 'package:penmark/domain/date.dart';
import 'package:penmark/domain/news.dart';

//デフォルトの実装として、In memory repo を実装
class NewsRepository{

  final _sample = [
    News(
      id: NewsId("48newri0238ceuxn"),
      date: Date(year: 2018, month: 12, day: 18),
      thumbnailURL: "hicfnsncf",
      title: "キャリアの8割は偶然?",
      url: "shiivnvdgvnov"
    )
  ];

  Future<List<News>> get top {
    return Future.value(_sample);
  }
}