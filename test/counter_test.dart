import 'package:flutter_test/flutter_test.dart';
import 'package:siemens/counter_app.dart';

void main(){
  test('Counter value should be increment',(){
    final counter = Counter();
    counter.increment();
    int actual = counter.value;
    int expected = 2;
    expect(actual, expected);
  });
}