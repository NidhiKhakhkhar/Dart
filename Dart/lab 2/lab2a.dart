import 'dart:io';

void main(List<String> args) {
  print("Enter a number : ");
  int a = int.parse(stdin.readLineSync()!);
  if(a>0){
    print("Number is positive");
  }

  else if(a<0){
    print("Number is negative");
  }
  else{
    print("Number is zero");
  }
}