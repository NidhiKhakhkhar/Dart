// Create a class named Member having the following members:
// 1 - Name
// 2 - Age
// 3 - Phone number
// 4 - Address
// 5 - Salary
// It also has a method named printSalary() which prints the salary of the members. Two classes
// Employee and Manager inherit the Member class. The Employee and Manager classes have
// data members specialization and department respectively. Now, assign name, age,
// phone_number, address and salary to an Employee and Manager by making an object of both
// of these classes and print the same along with specialization and department respectively.

import 'dart:io';

class Member {
  String? Name, Phone_Number, Address;
  double? Age, Salary;

  void GetDetails() {
    print("Enter Name : ");
    Name = stdin.readLineSync()!;
    print("Enter Age : ");
    Age = double.parse(stdin.readLineSync()!);
    print("Enter Phone number : ");
    Phone_Number = stdin.readLineSync()!;
    print("Enter Address : ");
    Address = stdin.readLineSync()!;
    print("Enter Salary : ");
    Salary = double.parse(stdin.readLineSync()!);
  }

  void printSalary() {
    print("Salary : $Salary");
  }

  void printDetails() {
    print("Name : $Name");
    print("Age : $Age");
    print("Phone Number : $Phone_Number");
    print("Address : $Address");
  }
}

class Employee extends Member {
  var Specialization;
  Member e1 = Member();

  void Details() {
    e1.GetDetails();
    print("Enter Specialization : ");
    Specialization = stdin.readLineSync()!;
  }

  void printDetails() {
    e1.printDetails();
    e1.printSalary();
    print("Specialization : $Specialization");
  }
}

class Manager extends Member {
  var Department;
  Member m1 = Member();

  void Details() {
    m1.GetDetails();
    print("Enter Department : ");
    Department = stdin.readLineSync()!;
  }

  void printDetails() {
    m1.printDetails();
    m1.printSalary();
    print("Department : $Department");
  }
}

void main(List<String> args) {
  Employee e = Employee();
  Manager m = Manager();
  print("For Employee");
  e.Details();
  e.printDetails();

  print("For Manager");
  m.Details();
  m.printDetails();
}
