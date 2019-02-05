import 'package:meta/meta.dart';
import 'package:penmark/domain/entity.dart';
import 'package:quiver/core.dart';

class Lecture extends Entity{
  final LectureId id;
  final Title title;


  Lecture({
    @required this.id,
    @required this.title,
  });
}

class LectureId{
  final String value;

  LectureId({@required this.value});

  @override
  bool operator ==(Object that) {
    if(that is! LectureId){
      return false;
    }else{
      return this.value == (that as LectureId).value;
    }
  }

  @override
  int get hashCode => this.value.hashCode;
}

class Title{
  final String value;

  Title({@required this.value});
}