// Write a dart code to calculate simple interest using a method.
import 'dart:io';

double sI(int p, int r, int n) {
  return p * r * n / 100;
}

void main(List<String> args) {
  print("Enter principle amount : ");
  int p = int.parse(stdin.readLineSync()!);
  print("Enter rate of interest : ");
  int r = int.parse(stdin.readLineSync()!);
  print("Enter number of years : ");
  int n = int.parse(stdin.readLineSync()!);

  print("Simple interest is : ${sI(p, r, n)}");
}
