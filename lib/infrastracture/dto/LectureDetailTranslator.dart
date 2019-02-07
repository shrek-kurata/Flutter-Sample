import 'package:penmark/domain/lecture.dart';

class LectureDetailTranslator{
  LectureDetail fromPersistence(Map<String, String> map){
    return LectureDetail(
      title: map["title"],
      content: map["content"]
    );
  }

  Map<String, String> toPersistence(LectureDetail detail){
    return {
      "title": detail.title,
      "content": detail.content
    };
  }
}