import 'dart:io';

main() {
  var contents = File('lib/Exercises/aux/names.txt').readAsStringSync();
  List<String> lines = contents.split(",");
  lines.sort((a, b) {
    return a.compareTo(b);
  });

  print(lines);
}
