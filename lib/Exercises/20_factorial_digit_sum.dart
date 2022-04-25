///*
///n! means n × (n − 1) × ... × 3 × 2 × 1
///
/// For example, 10! = 10 × 9 × ... × 3 × 2 × 1 = 3628800,
/// and the sum of the digits in the number 10! is 3 + 6 + 2 + 8 + 8 + 0 + 0 = 27.
///
/// Find the sum of the digits in the number 100!
/// Results will be generated on the Console

main() {
  f(BigInt i) => (i == BigInt.zero) ? BigInt.one : i * f(i - BigInt.one);
  num sum = f(BigInt.from(100))
      .toString()
      .split('')
      .fold<num>(0, (a, b) => a + num.parse(b));
  print("The sum of the digits in the number 100! is $sum.");
  assert(sum == 648);
}
