///*
/// You are given the following information, but you may prefer to do some research for yourself.
///
/// 1 Jan 1900 was a Monday.
/// Thirty days has September,
/// April, June and November.
/// All the rest have thirty-one,
/// Saving February alone,
/// Which has twenty-eight, rain or shine.
/// And on leap years, twenty-nine.
/// A leap year occurs on any year evenly divisible by 4, but not on a century unless it is divisible by 400.
/// How many Sundays fell on the first of the month during the twentieth century (1 Jan 1901 to 31 Dec 2000)?
/// Results will be generated on the Console

main() {
  List<int> daysPerMonth = [31, 29, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31];
  int sundaysCounter = 0, month, year, dayOfWeek = 1;

  bool leapYear(int yr) {
    return (yr / 4) % 1 == 0 && ((yr / 100) % 1 != 0 || (yr / 400) % 1 == 0);
  }

  for (month = 1; month <= 12; month++) {
    dayOfWeek = (daysPerMonth[month - 1] % 7);
    if (dayOfWeek > 7) {
      dayOfWeek = 0 + dayOfWeek % 7;
    }
  }

  for (year = 1901; year <= 2000; year++) {
    if (leapYear(year)) {
      daysPerMonth[1] = 29;
    } else {
      daysPerMonth[1] = 28;
    }

    for (month = 1; month <= 12; month++) {
      dayOfWeek += (daysPerMonth[month - 1] % 7);
      if (dayOfWeek > 7) {
        dayOfWeek = (0 + dayOfWeek % 7);
      } else if (dayOfWeek == 7) {
        sundaysCounter++;
      }
    }
  }
  print(
      "$sundaysCounter Sundays felt on the first of the month during the twentieth century.");
}
