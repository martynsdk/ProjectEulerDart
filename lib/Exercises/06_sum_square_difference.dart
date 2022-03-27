
import 'dart:math';

///*
///The sum of the squares of the first ten natural numbers is,
/// The square of the sum of the first ten natural numbers is,
/// Hence the difference between the sum of the squares of the first ten natural numbers and the square of the sum is .
/// Find the difference between the sum of the squares of the first one hundred natural numbers and the square of the sum.
/// Results will be generated on the Console

main(){

  num number = 1, sumOfTheSquares = 0, sum = 0;

  while (number <= 100){

    sumOfTheSquares = sumOfTheSquares + (pow(number, 2));
    sum = sum + number;
    number++;
  }
  var squareOfTheSum = pow(sum, 2);
  var difference = squareOfTheSum - sumOfTheSquares;

print("The sum of the squares of the first one hundred natural numbers is $sumOfTheSquares");
print("The square of the sum of the first one hundred natural numbers is $squareOfTheSum");
print("The difference between the sum of the squares of the first one hundred natural numbers and the square of the sum is $difference");

}

