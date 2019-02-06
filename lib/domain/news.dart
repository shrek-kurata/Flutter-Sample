import 'package:meta/meta.dart';
import 'package:penmark/domain/date.dart';
import 'package:penmark/domain/entity.dart';

class News extends Entity{
  NewsId id;
  String title;
  String thumbnailURL;
  String url;
  Date date;

  News({
    @required this.id,
    @required this.title,
    @required this.thumbnailURL,
    @required this.url,
    @required this.date }):super(){
    _validate();
  }

  _validate(){

  }
}

@immutable
class NewsId{
  final String value;

  const NewsId(this.value);
}
