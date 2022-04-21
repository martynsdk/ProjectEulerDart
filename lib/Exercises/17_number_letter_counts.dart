///*
///
/// If the numbers 1 to 5 are written out in words: one, two, three, four, five, then there are 3 + 3 + 5 + 4 + 4 = 19 letters used in total.
///
/// If all the numbers from 1 to 1000 (one thousand) inclusive were written out in words, how many letters would be used?
///
/// NOTE: Do not count spaces or hyphens.
/// For example, 342 (three hundred and forty-two) contains 23 letters and 115 (one hundred and fifteen) contains 20 letters.
/// The use of "and" when writing out numbers is in compliance with British usage.
/// Results will be generated on the Console

main() {
  var lenHundred = 7;
  var lenThousand = 8;
  var lenPlaceOnes = [0, 3, 3, 5, 4, 4, 3, 5, 5, 4];
  var lenPlaceTens = [0, 3, 6, 6, 5, 5, 5, 7, 6, 6];

  int sumTo(number) {
    var sum = 0;

    for (var i = 1; i <= number; i++) {
      int placeOnes = i % 10;
      int placeTens = (i / 10).floor() % 10;
      int placeHundreds = (i / 100).floor() % 10;
      int placeThousands = (i / 1000).floor() % 10;

      sum += lenPlaceOnes[placeOnes];

      sum += lenPlaceTens[placeTens];

      if (placeHundreds != 0) {
        sum += lenHundred + lenPlaceOnes[placeHundreds];
      }

      if (placeThousands != 0) {
        sum += lenThousand + lenPlaceOnes[placeThousands];
      }

      if (placeTens == 1) {
        switch (placeOnes) {
          case 4:
          case 6:
          case 7:
          case 9:
            sum += 1;
            break;
        }
      }

      if (i > 100 && i % 100 != 0) {
        sum += 3;
      }
    }
    return sum;
  }

  print(
      "If all the numbers from 1 to 1000 (one thousand) inclusive were written out in words, there would be ${sumTo(1000)} letters.");
}
