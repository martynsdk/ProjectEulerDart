import 'package:flutter/foundation.dart';

/// *
/// Each new term in the Fibonacci sequence is generated by adding the previous two terms. By starting with 1 and 2, the first 10 terms will be:
/// 1, 2, 3, 5, 8, 13, 21, 34, 55, 89, ...
/// By considering the terms in the Fibonacci sequence whose values do not exceed four million, find the sum of the even-valued terms.
/// Results will be printed on Console.

main() {

  int sumOfEvenFibonacci(int n) {
    if (n < 2) return 0;

    int temp1 = 0, evenNumberCounter = 2;
    int sum = temp1 + evenNumberCounter;
    
    while (evenNumberCounter <= n) {
      int temp2 = 4 * evenNumberCounter + temp1;
      if (temp2 > n) break;
      temp1 = evenNumberCounter;
      evenNumberCounter = temp2;
      sum += evenNumberCounter;
    }
    return sum;
  }
    int entry = 4000000;
    if (kDebugMode) {
      print("The sum of the even fibonacci numbers whose values do not exceed four million is ${sumOfEvenFibonacci(entry)}");
    }
}
