

  import 'dart:math';
  import 'package:flutter/foundation.dart';

  ///*
  /// A palindromic number reads the same both ways. The largest palindrome made from the product of two 2-digit numbers is 9009 = 91 × 99.
  ///
  /// Find the largest palindrome made from the product of two 3-digit numbers.
  /// Results will be generated on the Console

  main(){

    int remind, sum =0, tmp;
    var myList = List<int>.generate(3, (index) => index * index, growable: true);
    int n1 = 100;
    int n2 = 100;
    tmp = n1;

    while (n1 < 1000){
      while (n2 < 1000){
        int product = n1 * n2;
        tmp = product;

        while(tmp>0) {
          remind = tmp % 10;
          sum = (sum * 10) + remind;
          tmp = tmp ~/ 10;
        }

          if (sum == product){
            myList.add(product);
          }
        n2++;
          sum = 0;
      }
      n1++;
      n2 = n1;
    }

    int largestPalindrome = myList.reduce(max);
    if (kDebugMode) {
      print("The largest palindrome made from the product of two 3-digit numbers is $largestPalindrome");
    }

  }

