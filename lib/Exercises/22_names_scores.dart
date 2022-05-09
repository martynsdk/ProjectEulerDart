import 'dart:io';

/// Using names.txt (right click and 'Save Link/Target As...'), a 46K text file containing over five-thousand first names, begin by sorting it into alphabetical order.
/// Then working out the alphabetical value for each name, multiply this value by its alphabetical position in the list to obtain a name score.
/// For example, when the list is sorted into alphabetical order, COLIN, which is worth 3 + 15 + 12 + 9 + 14 = 53, is the 938th name in the list.
/// So, COLIN would obtain a score of 938 × 53 = 49714.
/// What is the total of all the name scores in the file?
/// Results will be generated on the Console

main() {
  List<String> names = File('lib/Exercises/aux/names.txt')
      .readAsStringSync()
      .replaceAll('"', '')
      .split(',');
  names.sort((a, b) {
    return a.compareTo(b);
  });

  var alphabet = [
    " ",
    "a",
    "b",
    "c",
    "d",
    "e",
    "f",
    "g",
    "h",
    "i",
    "j",
    "k",
    "l",
    "m",
    "n",
    "o",
    "p",
    "q",
    "r",
    "s",
    "t",
    "u",
    "v",
    "w",
    "x",
    "y",
    "z"
  ];

  var totalScore = 0;
  var wordScore = 0;
  var sumOfWord = 0;
  for (int i = 1; i <= names.length; i++) {
    for (var j = 0; j < names[i - 1].length; j++) {
      sumOfWord += alphabet.indexOf((names[i - 1])[j].toLowerCase());
    }
    wordScore = sumOfWord * i;
    totalScore = totalScore + wordScore;
    sumOfWord = 0;
    wordScore = 0;
  }

  print("The total of all the name scores in the file is $totalScore");
  assert(totalScore == 871198282);
}
