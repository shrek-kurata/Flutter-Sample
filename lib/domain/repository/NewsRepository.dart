import 'package:penmark/domain/news.dart';

// Domainには実装を置かない
// Testの所に In memory repoを、 Infraの所に Impl を
abstract class NewsRepository{
  Future<List<News>> get top;
}