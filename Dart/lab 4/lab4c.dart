// Write a dart code to generate a Fibonacci series of N given numbers using this method.

import 'dart:io';

void fibo(int n){
  int a=0,b=1,c=0;
  print(a);
  print(b);
 for(int i=0;i<n-2;i++){
  c = a+b;
  a=b;
  b=c;
  print("$c");
 }
}
void main(List<String> args) {
  print("Enter a number for nth number of Fibonacci series : ");
  int n = int.parse(stdin.readLineSync()!);

  fibo(n);

}