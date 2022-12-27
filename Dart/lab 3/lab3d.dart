// Write a dart code to print a given number in reverse order.

import 'dart:io';

void main(List<String> args) {
  print("Enter a number :");
  int n = int.parse(stdin.readLineSync()!);
  int temp = n,digit = 1;
  while(temp>=10){
    temp = temp ~/ 10;
    digit++;
  }

  for(int i=digit;i<=0;i--){

  }
}