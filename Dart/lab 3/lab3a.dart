// Write a dart code to print numbers between two given numbers which are divisible by 2 but not
// divisible by 3.

import 'dart:io';

void main(List<String> args) {
  print("Enter 1st number :");
  int n1 = int.parse(stdin.readLineSync()!);
  print("Enter 2nd number :");
  int n2 = int.parse(stdin.readLineSync()!);

  for(var i=n1;i<=n2;i++){
    if(i%2==0 && i%3!=0){
      print(i);
    }
  }
}