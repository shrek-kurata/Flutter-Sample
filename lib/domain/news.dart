import 'package:meta/meta.dart';
import 'package:penmark/domain/date.dart';
import 'package:penmark/domain/entity.dart';

class News extends Entity{
  final NewsId id;
  final String title;
  final String thumbnailURL;
  final String url;
  final Date date;

  News({
    @required this.id,
    @required this.title,
    @required this.thumbnailURL,
    @required this.url,
    @required this.date }):
      assert(id != null),
      assert(title != null),
      assert(thumbnailURL != null),
      assert(url != null),
      assert(date != null),
      super();
}

@immutable
class NewsId{
  final String value;

  const NewsId(this.value): assert(value != null);
}
