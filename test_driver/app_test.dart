import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_driver/flutter_driver.dart';
import 'package:test/test.dart';

final auth = FirebaseAuth.instance;

void main() {

  group('Penmark App', () {
    FlutterDriver driver;

    // Connect to the Flutter driver before running any tests
    setUpAll(() async {
      driver = await FlutterDriver.connect();
    });

    test("firebase", ()async{
      await auth.signInWithEmailAndPassword(email: "oiwara@keio.jp", password: "ThisIsPassword");
    });

    // Close the connection to the driver after the tests have completed
    tearDownAll(() async {
      if (driver != null) {
        driver.close();
      }
    });
  });
}