//crud operations for student api

import 'dart:io';

class Student {
  int? enrollment;
  String? name, city, department;
  double? age;

  List<Map<String, dynamic>> list = [];

  void addStudent() {
    Map<String, dynamic> map = {};

    print("Enter Enrollment Number of student : ");
    map['enrollment'] = int.parse(stdin.readLineSync()!);
    print("Enter Name of student : ");
    map['name'] = stdin.readLineSync();
    print("Enter Age of student : ");
    map['age'] = double.parse(stdin.readLineSync()!);
    print("Enter City of student : ");
    map['city'] = stdin.readLineSync();
    print("Enter Department of student : ");
    map['department'] = stdin.readLineSync();

    list.add(map);
  }

  void displayStudentDetails() {
    for (var i = 0; i < list.length; i++) {
      Map<String, dynamic> map = list[i];
      print("Enrollment Number : ${map['enrollment']}");
      print("Name : ${map['name']}");
      print("Age : ${map['age']}");
      print("City : ${map['city']}");
      print("Department : ${map['department']}");
      print("------------");
    }
  }

  void editStudent() {
    print("Enter Enrollment Number : ");
    int enroll = int.parse(stdin.readLineSync()!);
    for (var i = 0; i < list.length; i++) {
      Map<String, dynamic> map = list[i];
      if (enroll == map['enrollment']) {
        print("Please re-enter Name of student : ");
        map['name'] = stdin.readLineSync();
        print("Please re-enter Age of student : ");
        map['age'] = double.parse(stdin.readLineSync()!);
        print("Please re-enter City of student : ");
        map['city'] = stdin.readLineSync();
        print("Please re-enter Department of student : ");
        map['department'] = stdin.readLineSync();

        list[i] = map;
      }
    }
  }

  void deleteStudent() {
    print("Enter Enrollment Number : ");
    int enroll = int.parse(stdin.readLineSync()!);
    for (var i = 0; i < list.length; i++) {
      Map<String, dynamic> map = list[i];
      if (enroll == map['enrollment']) {
        list.removeAt(i);
      }
    }
  }

  void searchStudent() {
    print("Enter Enrollment Number : ");
    int enroll = int.parse(stdin.readLineSync()!);
    for (var i = 0; i < list.length; i++) {
      Map<String, dynamic> map = list[i];
      if (enroll == map['enrollment']) {
        print("Name : ${map['name']}");
        print("Age : ${map['age']}");
        print("City : ${map['city']}");
        print("Department : ${map['department']}");
      }
    }
  }
}

void main(List<String> args) {
  Student student = Student();
  int exit = 0;
  while (exit != 6) {
    print("1. Add\n2. Display\n3. Search\n4. Update\n5. Delete\n6. Exit");
    print("Enter your choice : ");
    int choice = int.parse(stdin.readLineSync()!);
    switch (choice) {
      case 1:
        student.addStudent();
        break;
      case 2:
        student.displayStudentDetails();
        break;
      case 3:
        student.searchStudent();
        break;
      case 4:
        student.editStudent();
        break;
      case 5:
        student.deleteStudent();
        break;
      case 6:
        exit = choice;
        break;
    }
  }
}
