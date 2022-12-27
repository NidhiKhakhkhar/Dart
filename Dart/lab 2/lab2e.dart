// Write a dart code to find out the largest number from the given 3 numbers using the conditional
// operator.

import 'dart:io';

void main(List<String> args) {
  print("Enter 1st number");
  int a = int.parse(stdin.readLineSync()!);
  print("Enter 2nd number");
  int b = int.parse(stdin.readLineSync()!);
  print("Enter 3rd number");
  int c = int.parse(stdin.readLineSync()!);

  a>b? (a>c? (print("$a is largest")):(print("$c is largest"))):(b>c? (print("$b is largest")):(print("$c is largest")));

}