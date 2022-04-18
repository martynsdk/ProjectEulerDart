///*
///The following iterative currentNumber is defined for the set of positive integers:
///
/// n → n/2 (n is even)
/// n → 3n + 1 (n is odd)
///
/// Using the rule above and starting with 13, we generate the following currentNumber:
///
/// 13 → 40 → 20 → 10 → 5 → 16 → 8 → 4 → 2 → 1
/// It can be seen that this currentNumber (starting at 13 and finishing at 1) contains 10 terms. Although it has not been proved yet (Collatz Problem), it is thought that all starting numbers finish at 1.
///
/// Which starting number, under one million, produces the longest chain?
///
/// NOTE: Once the chain starts the terms are allowed to go above one million.
/// Results will be generated on the Console

main() {
  const limit = 1000000;
  var longestChain = 1;
  var startingNumber = 1;

  for (int i = 2; i < limit; i++) {
    var numberOfTerms = 1;
    var currentNumber = i;

    while (currentNumber != 1) {
      if (currentNumber % 2 == 0) {
        currentNumber = (currentNumber / 2) as int;
      } else {
        currentNumber = ((3 * currentNumber) + 1);
      }
      numberOfTerms = numberOfTerms + 1;
    }

    if (numberOfTerms > longestChain) {
      longestChain = numberOfTerms;
      startingNumber = i;
    }
  }

  print(
      "The starting number under one million ($startingNumber), produces the largest chain ($longestChain).");
}
