
import 'dart:math';

///*
///A Pythagorean triplet is a set of three natural numbers, a < b < c, for which,
///
/// a2 + b2 = c2
/// For example, 32 + 42 = 9 + 16 = 25 = 52.
///
/// There exists exactly one Pythagorean triplet for which a + b + c = 1000.
/// Find the product abc.
/// Results will be generated on the Console

main(){

  const perimeter = 1000;
  for(var a = 0; a < perimeter; a++){
    for (var b = a+1; b < perimeter; b++){
      var c = perimeter - a - b;
      if(pow(a, 2) + pow(b, 2) == pow(c, 2) && a != 0){
        print("a + b + c = 1000 || '$a' + '$b' + '$c' = 1000.");
        print("The product of a * b * c is '${a*b*c}'.");
        print("And the sum of a^2 + b^2 = '${pow(a, 2) + pow(b, 2)}', which is the same as c^2 = '${pow(c, 2)}'");
      }
    }
  }




}


/***
 * def compute():
    PERIMETER = 1000
    for a in range(1, PERIMETER + 1):
    for b in range(a + 1, PERIMETER + 1):
    c = PERIMETER - a - b
    if a * a + b * b == c * c:
    # It is now implied that b < c, because we have a > 0
    return str(a * b * c)


    if __name__ == "__main__":
    print(compute())

 */