
import 'package:flutter/foundation.dart';

/// *
/// If we list all the natural numbers below 10 that are multiples of 3 or 5, we get 3, 5, 6 and 9. The sum of these multiples is 23.
/// Find the sum of all the multiples of 3 or 5 below 1000.
/// Results will be printed on Console.

main() {
  int number = 1000;
  int sum = 0;
  for (var i = 0; i < number; i++) {
    if (i%3==0 || i%5==0){
      sum += i;
    }
  }
  if (kDebugMode) {
    print ("The sum of all the multiples of 3 or 5 below 1000 is $sum");
  }
}