import 'package:rxdart/rxdart.dart';
import 'package:test/test.dart';

void main(){
  test("Rx Test", ()async{
    final subject = BehaviorSubject<int>();
    subject.listen(print);
    subject.add(1);
    subject.add(2);
    subject.listen(print);
    subject.add(3);

  },skip: "This is just an example");
}

