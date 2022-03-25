
import 'package:flutter/foundation.dart';

///*
/// 2520 is the smallest number that can be divided by each of the numbers from 1 to 10 without any remainder.
///
/// What is the smallest positive number that is evenly divisible by all of the numbers from 1 to 20?
/// Results will be generated on the Console

main(){

  int number = 1;
  int divisible = 20;

  while(divisible > 0){
    if(number % divisible == 0){
      divisible--;
    }
    else{
      number++;
      divisible = 20;
    }
  }

  if (kDebugMode) {
    print("The smallest positive number that is evenly divisible by all of the numbers from 1 to 20 is: $number");
  }
}
