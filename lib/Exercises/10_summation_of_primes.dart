///*
/// The sum of the primes below 10 is 2 + 3 + 5 + 7 = 17.
///
/// Find the sum of all the primes below two million.
/// Results will be generated on the Console

void main(){

  var sumOfPrimes = 0;

  bool isPrime(n) {
    for (var i = 2; i <= n / i; ++i) {
      if (n % i == 0) {
        return false;
      }
    }
    return true;
  }

  for (var i = 2; i < 2000000; i++){
    if(isPrime(i)){
      sumOfPrimes = sumOfPrimes + i;
    }
  }

print("The sum of all the primes below two million is: '$sumOfPrimes'.");

}