// Write a dart code to count the number of even or odd numbers from an array of n numbers.
import 'dart:io';

void array(List<int> a) {
  int even = 0;
  while (a.length-- > 0) {
    if (a.last % 2 == 0) even++;
  }
  print("Even : $even");
  print("Odd : ${a.length - even}");
}

void main(List<String> args) {
  List<int> a = [];
  print("Enter array length : ");
  int n = int.parse(stdin.readLineSync()!);
  while (n-- > 0) {
    a.add(int.parse(stdin.readLineSync()!));
  }

  array(a);
}
