// Write a dart code to find the maximum number from two numbers using this method.
import 'dart:io';

void max(int a, int b) {
  if (a > b) {
    print("Maximum is : $a");
  } else {
    print("Maximum is : $b");
  }
}

void main(List<String> args) {
  print("Enter 1st number : ");
  int n1 = int.parse(stdin.readLineSync()!);
  print("Enter 2nd number : ");
  int n2 = int.parse(stdin.readLineSync()!);

  max(n1, n2);
}
