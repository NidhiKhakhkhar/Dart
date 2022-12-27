// Write a dart code to read marks of five subjects. Calculate percentage and print class
// accordingly. Fail below 35, Pass Class between 35 to 45, Second Class between 45 to 60, First
// Class between 60 to 70, Distinction if more than 70.

import 'dart:io';
void main(List<String> args) {
  print("Enter Maths marks : ");
  int m1 = int.parse(stdin.readLineSync()!);
  print("Enter English marks :");
  int m2 = int.parse(stdin.readLineSync()!);
  print("Enter Science marks :");
  int m3 = int.parse(stdin.readLineSync()!);
  print("Enter Computer marks :");
  int m4 = int.parse(stdin.readLineSync()!);
  print("Enter History marks :");
  int m5 = int.parse(stdin.readLineSync()!);

  double p = (m1+m2+m3+m4+m5)/5;

  if(p<35){
    print("$p : Fail");
  }
  else if(p>35 && p<45){
    print("$p : Pass");
  }
  else if(p>45 && p<60){
    print("$p : Second class");
  }

  else if(p>60 && p<70){
    print("$p : First class");
  }
  else{
    print("$p : Distinction");
  }
}