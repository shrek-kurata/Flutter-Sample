import 'package:penmark/domain/lecture.dart';

class LectureDetailTranslator{
  LectureDetail fromPersistence(Map<String, dynamic> map){

    return LectureDetail(
      title: map["title"] as String,
      content: map["content"] as String
    );
  }

  Map<String, dynamic> toPersistence(LectureDetail detail){
    return <String, dynamic>{
      "title": detail.title,
      "content": detail.content
    };
  }
}