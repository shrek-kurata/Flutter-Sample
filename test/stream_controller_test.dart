import 'dart:async';
import 'package:test/test.dart';

Stream<int> timedCounter(Duration interval, [int maxCount]) {
  StreamController<int> controller;
  Timer timer;
  int counter = 0;

  void tick(Timer _) {
    counter++;
    controller.add(counter); // Ask stream to send counter values as event.
    if (counter == maxCount) {
      timer.cancel();
      controller.close(); // Ask stream to shut down and tell listeners.
    }
  }

  void startTimer() {
    timer = Timer.periodic(interval, tick);
  }

  void stopTimer() {
    if (timer != null) {
      timer.cancel();
      timer = null;
    }
  }

  controller = StreamController<int>(
    onListen: startTimer,
    onPause: stopTimer,
    onResume: startTimer,
    onCancel: stopTimer);

  return controller.stream;
}

void main(){
  group("Stream Controller", (){
    test("example", ()async{
      //example from https://www.dartlang.org/articles/libraries/creating-streams#using-a-streamcontroller
      var counterStream = timedCounter(const Duration(seconds: 1), 15);
      StreamSubscription<int> subscription;

      subscription = counterStream.listen((int counter) {
        print(counter); // Print an integer every second.
        if (counter == 5) {
          // After 5 ticks, pause for five seconds, then resume.
          subscription.pause(Future<Duration>.delayed(const Duration(seconds: 5)));
        }
      });

      counterStream.listen(print);

      await subscription.asFuture<int>();
    }, skip: "This is just an example");

    test("Cold streams don't arrow several subscribes", (){
      var counterStream = timedCounter(const Duration(seconds: 1), 15);
      counterStream.listen((_) => _);
      expect(() => counterStream.listen((_) => _), throwsA(TypeMatcher<Error>()));
    });
  });
}

// Bad example of implementing StreamController
// これだとpauseしても、Streamが一時停止しない
Stream<int> badTimedCounter(Duration interval, [int maxCount]) {
  var controller = StreamController<int>();
  int counter = 0;
  void tick(Timer timer) {
    counter++;
    controller.add(counter); // Ask stream to send counter values as event.
    if (maxCount != null && counter >= maxCount) {
      timer.cancel();
      controller.close(); // Ask stream to shut down and tell listeners.
    }
  }

  Timer.periodic(interval, tick); // BAD: Starts before it has subscribers.
  return controller.stream;
}
