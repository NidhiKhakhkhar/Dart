// Write a dart code to accept a number and check whether the number is prime or not. Use
// method name check (int n). The method returns 1, if the number is prime otherwise, it returns
// 0.

import 'dart:io';

int? check(int n){
  for(int i=2;i<n/2;i++){
    if(n%i==0){
      return 0;
    }
    else {
      return 1;
    }
  }
}
void main(List<String> args) {
  print("Enter a number : ");
  int n = int.parse(stdin.readLineSync()!);

  print(check(n));
}