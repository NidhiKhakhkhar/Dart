// write a dart code to cal. the value of resister input 3 color and find the resister
// black =0
// brown  =1
// red = 2
// orange =3
// yellow =4
// green =5
// blue =6
// violet =7
// grey =8
// white = 9

import 'dart:io';
import 'dart:math';

void main(List<String> args) {
  List<String> list = [
    "Black",
    "Brown",
    "Red",
    "Orange",
    "Yellow",
    "Green",
    "Blue",
    "Violet",
    "Grey",
    "White"
  ];
  print(
      "Black,Brown , Red, Orange , Yellow, Green , Blue, Violet, Grey , White");
  print("Enter colors from above:");
  print("Enter 1st color : ");
  String c1 = stdin.readLineSync()!;
  print("Enter 2nd color : ");
  String c2 = stdin.readLineSync()!;
  print("Enter 3rd color : ");
  String c3 = stdin.readLineSync()!;

  if (c1 == c2 && c2 == c3) {
    print("Invalid Input");
  } else {
    print(list.indexOf(c1) * 10 + list.indexOf(c2) * pow(10, list.indexOf(c3)));
  }
}
