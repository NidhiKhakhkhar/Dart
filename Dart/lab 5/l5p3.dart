// Write a dart code to create a Circle class with area() and perimeter() function to find area and
// perimeter of the circle

import 'dart:io';
import 'dart:math';

class Circle {
  double area(int r) {
    return pi * r * r;
  }

  double perimeter(int r) {
    return 2 * pi * r;
  }
}

void main(List<String> args) {
  print("Enter radius  of circle : ");
  int radius = int.parse(stdin.readLineSync()!);

  print("Area : ${Circle().area(radius).toStringAsFixed(2)}");
  print("Perimeter : ${Circle().perimeter(radius).toStringAsFixed(2)}");
}
