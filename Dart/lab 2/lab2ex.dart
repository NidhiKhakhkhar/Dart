// write a flutter code find the diff bet square of the sum and sum of squares of first n numbers
import 'dart:io';
import 'dart:math';

int sum(int n){
    if(n<1) return 0;
    return n+sum(n-1);
  }
  int sumOfSquare(int n){
    if(n<1) return 0;
    return pow(n,2).toInt() + sumOfSquare(n-1);
  }
void main(List<String> args) {
  print("Enter a number");
  int n = int.parse(stdin.readLineSync()!);
  print("Difference of square of sum and sum of squares is:");
  print(pow(sum(n), 2) - sumOfSquare(n));


}