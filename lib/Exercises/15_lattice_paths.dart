///*
/// Starting in the top left corner of a 2×2 grid, and only being able to move to the right and down, there are exactly 6 routes to the bottom right corner.
///
///
/// How many such routes are there through a 20×20 grid?
/// Results will be generated on the Console

main() {
  const n = 20;
  double c = 1;
  for (var i = 1; i <= n; i++) {
    c = c * (n + i) / i;
  }
  print("There are ${c.round()} possible routes through a 20×20 grid.");
}
