import 'dart:io';

main() {
  var contents = File('lib/Exercises/aux/names.txt').readAsStringSync();
  print(contents);
  List<String> lines = contents.split(",");
  lines.sort((a, b) {return a.compareTo(b);});

  //List<String> lines = ["MARTYN", "JULIANA"];


  print(lines.length);
  var alpha = [" ", "a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z"];
  var totalScore= 0;
  var totalOfWord = 0;
  var sumOfWord = 0;
  for (int i = 1; i <= lines.length; i++){

    for (var j = 0 ; j < lines[i-1].length; j++){
      print(i);
      sumOfWord += alpha.indexOf((lines[i-1])[j].toLowerCase());
    }
    totalOfWord = sumOfWord * i;
    totalScore = totalScore + totalOfWord;
    print("${lines[i-1]} $i sumOfWord $sumOfWord totalOfWord $totalOfWord  totalScore $totalScore");
    sumOfWord = 0;
    totalOfWord = 0;
  }

  print(totalScore);

// 13+1+18+20+14+25
// 10+21+12+9+1+14+1
}