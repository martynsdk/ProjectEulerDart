
  import 'dart:math';

  ///*
  /// By listing the first six prime numbers: 2, 3, 5, 7, 11, and 13, we can see that the 6th prime is 13.
  /// What is the 10 001st prime number?
  /// Results will be generated on the Console

  main(){

    bool checkPrime(int num){
      if(num<=1){
        return false;
      }

      for (int i = 2;i<=sqrt(num);i++){
        if(num%i == 0){
          return false;
        }
      }
      return true;
    }

    var primeCounter = 0;
    var number = 0;

    while (primeCounter < 10001){
      number++;
      if(checkPrime(number) == true){
        primeCounter++;
      }

    }

    print(number);


  }