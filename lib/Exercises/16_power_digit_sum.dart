///*
///2^15 = 32768 and the sum of its digits is 3 + 2 + 7 + 6 + 8 = 26.
///
/// What is the sum of the digits of the number 2^1000?
/// Results will be generated on the Console

main() {
  List<String> number = BigInt.from(2).pow(1000).toString().split("");
  var sum = 0;

  for (var i = 0; i < number.length; i++) {
    var current = int.parse(number[i]);
    sum += current;
  }
  print("The sum of the digits of the number 2^1000 is '$sum'.");
}
