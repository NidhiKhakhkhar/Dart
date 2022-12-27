// Write a dart code that calculates area of circle, triangle and square using method overloading.

import 'dart:io';
import 'dart:math';

// num area(String type,num r, [num h=0]){
//   if(type=='circle'){
//     return 6.28*r*r;
//   }
//   else if(type=='triangle'){
//     return (0.5*r*h);
//   }

//     return (r*r);

// }

// void main(List<String> args) {
//   print("Enter type : circle,triangle,square : ");
//   String type = stdin.readLineSync()!;

//   print("Enter number : ");
//   int r = int.parse(stdin.readLineSync()!);

//   int h = (type=='triangle'?  int.parse(stdin.readLineSync()!): 0);

//  if(type=='circle' || type=='triangle' || type=='square'){
//    print("Area is: ${area(type,r,h)}");
//  }
// }

class Area {
  double area({height, base, radius, length}) {
    if (radius != null) return radius * radius * pi;
    if (height == null) return base * base;
    return 0.5 * height * base;
  }
}

void main(List<String> args) {
  int choice = 0;

  while (choice != 4) {
    print(
        "\nEnter 1 to calculate area of triangle \nEnter 2 to calculate area of circle \nEnter 3 to calculate area of square \nPress 4 to exit");
    choice = int.parse(stdin.readLineSync()!);
    switch (choice) {
      case 1:
        print("Enter height");
        int height = int.parse(stdin.readLineSync()!);
        print("Enter base");
        int base = int.parse(stdin.readLineSync()!);
        print("Area of triangle : ${Area().area(height: height, base: base)}");
        break;

      case 2:
        print("Enter radius");
        print(
            "Area of circle: ${Area().area(radius: int.parse(stdin.readLineSync()!)).toStringAsFixed(2)}");
        break;

      case 3:
        print("Enter lenght");
        print(
            "Area of square : ${Area().area(base: double.parse(stdin.readLineSync()!))}");
        break;
    }
  }
}
