import 'package:penmark/domain/news.dart';
import 'package:penmark/domain/repository/NewsRepository.dart';

class WordPressNewsRepository implements NewsRepository{
  @override
  Future<List<News>> get top => null;

}