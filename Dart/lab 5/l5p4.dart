// Define Time class with hour and minute as data member. Also define addition() method to add
// two-time objects.

import 'dart:io';

class Time {
  var hour;
  var minute;
  var second;
  Time() {
    hour = 0;
    minute = 0;
    second = 0;
  }

  void GetTime() {
    print("Enter hours : ");
    hour = int.parse(stdin.readLineSync()!);
    print("Enter minutes : ");
    minute = int.parse(stdin.readLineSync()!);
    print("Enter second : ");
    second = int.parse(stdin.readLineSync()!);
  }

  void AddTime(Time t) {
    this.second += t.second;
    if (this.second >= 60) {
      this.minute++;
      this.second -= 60;
    }
    this.minute += t.minute;
    if (this.minute >= 60) {
      this.hour++;
      this.minute -= 60;
    }
    this.hour += t.hour;
  }

  void DisplayTime() {
    if (second >= 60) {
      minute++;
      second -= 60;
    }
    if (minute >= 60) {
      hour++;
      minute -= 60;
    }
    print("$hour : $minute : $second");
  }
}

void main(List<String> args) {
  Time t1 = Time();
  Time t2 = Time();
  t1.GetTime();
  t1.DisplayTime();
  t2.GetTime();
  t2.DisplayTime();
  t1.AddTime(t2);
  t1.DisplayTime();
}
