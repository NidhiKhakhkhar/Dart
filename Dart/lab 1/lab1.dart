import 'dart:io';
// 1  Write a dart code to print your name in the console.
void main(List<String> args) {
  print("Nidhi Khakhkhar");



// 2 Write a dart code to print the addition of 2 numbers.
  print("Addition of two number");
  int? a,b;
  a=5;
  b=10;
  print(a+b);

// 3  Write a dart code to convert temperature from Fahrenheit to Celsius.[°C = [(°F-32)×5]/9, °F = °C
// * 1.8000]
  print("Enter temperature in celsius");
  int f=int.parse(stdin.readLineSync()!);
  double c;
  c=(f-32)*5/9;
  print("Temperature in Celsius : $c" );
// 4  Write a dart code to find the percentage of 5 subjects.
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

  double p;
  p = (m1+m2+m3+m4+m5)/5;

  print("Percentage is : $p");

// 5 Write a dart code that reads a number in meters, converts it to feet, and displays the result.
  print("Enter a Number in meter :");
  double m = double.parse(stdin.readLineSync()!);
  print("Units in feet : ${m*3.281}");



// 6 Body Mass Index (BMI) is a measure of health on weight. It can be calculated by taking your
// weight in kilograms and dividing by the square of your height in meters. Write a dart code that
// prompts the user to enter a weight in pounds and height in inches and display the BMI.
// Note: 1 pound = .45359237 kg and 1 inch = 0.254 meters

print("Enter weight in pounds : ");
int w = int.parse(stdin.readLineSync()!);
print("Enter height in inches :");
int h = int.parse(stdin.readLineSync()!);

double weight = w*0.45359237;
double height = h*0.254;

print("BMI is : ${weight/(height*height)}");

}