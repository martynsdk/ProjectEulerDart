
///
/// Let d(n) be defined as the sum of proper divisors of n (numbers less than n which divide evenly into n).
/// If d(a) = b and d(b) = a, where a ≠ b, then a and b are an amicable pair and each of a and b are called amicable numbers.
/// For example, the proper divisors of 220 are 1, 2, 4, 5, 10, 11, 20, 22, 44, 55 and 110; therefore d(220) = 284. The proper divisors of 284 are 1, 2, 4, 71 and 142; so d(284) = 220.
/// Evaluate the sum of all the amicable numbers under 10000.
/// Results will be generated on the Console

main() {
  const limit = 10000;

  int sumOfProperDivisors(int n) {
    List<int> divisors = [1];
    for (int i = 2; i * i <= n; ++i) {
      if (n % i == 0) {
        divisors.add(i);
        if (i != n / i) {
          divisors.add((n / i).round());
        }
      }
    }
    var sumOfDivisors = divisors.reduce((a, b) => a + b);
    return sumOfDivisors;
  }

  var sumOfAmicableNumbers = 0;
  for (int a = 1; a <= limit; a++) {
    int b = sumOfProperDivisors(a);
    if (a < b && b <= limit && sumOfProperDivisors(b) == a) {
      sumOfAmicableNumbers += a + b;
    }
  }

  assert(sumOfAmicableNumbers == 31626);
  print(
      "The sum of all the amicable numbers under 10000 is $sumOfAmicableNumbers.");
}
