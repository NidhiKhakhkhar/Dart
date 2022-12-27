// Write a dart code to perform Addition, Subtraction, Multiplication, Division based on user choice
// using if, if..else..if, & switch.

import 'dart:io';

void main(List<String> args) {
  print("Enter 1st number :");
  int n1 = int.parse(stdin.readLineSync()!);
  print("Enter 2nd number : ");
  int n2 = int.parse(stdin.readLineSync()!);
  print("Enter an operation : +,-,*,/  :");
  String op = stdin.readLineSync()!;
  if(op == '+'){
    print("Addition : ${n1+n2}");
  }
  else if(op == '-'){
    print("Substraction : ${n1-n2}");
  }
  else if(op == '*'){
    print("Multilpication : ${n1*n2}");
  }
  else if(op == '/'){
    print("Division : ${n1/n2}");
  }
  else{
    print("Enter a valid operation");
  }

}