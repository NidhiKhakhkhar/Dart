// Write a dart code to find the factorial of the given number.

import 'dart:io';

void main(List<String> args) {
  print("Enter a number");
  int n = int.parse(stdin.readLineSync()!),ans=1;
  for(int i=1;i<=n;i++){
    ans *=i;
  }
  print("Factorial of $n is $ans");
}