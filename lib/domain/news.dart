import 'package:penmark/domain/date.dart';
import 'package:penmark/domain/entity.dart';

class News extends Entity{
  NewsId id;
  String title;
  String thumbnailURL;
  String url;
  Date date;
}

class NewsId{
  final String value;

  const NewsId(this.value);
}
