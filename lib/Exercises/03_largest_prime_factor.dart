
import 'dart:math';
import 'package:flutter/foundation.dart';

  /// *
  /// The prime factors of 13195 are 5, 7, 13 and 29.
  /// What is the largest prime factor of the number 600851475143 ?
  /// Results will be generated on the Console

  main(){

    List<int> primeFactors(num n) {
    List<int> result = [];
    
    while(n % 2 == 0) {
      result.add(2);
      n ~/=2;
    }

    for(int i = 3; i <= sqrt(n); i+=2) {
      while(n % i == 0) {
        result.add(i);
        n ~/= i;
      }
    }
    
    if(n > 2) {
      result.add(n.toInt());
    }
    
    result.sort();
    return result;
    }

    if (kDebugMode) {
      print("The largest prime factor of 600851475143 is: ${primeFactors(600851475143).reduce(max)}");
    }

  }