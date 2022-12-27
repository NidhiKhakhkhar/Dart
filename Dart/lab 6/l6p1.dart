// Write a dart code that prompts the user to enter 5 numbers, stores them in a List, and displays
// them in increasing order

import 'dart:io';

void main(List<String> args) {
  List<int> a = [];
  int temp = 0;
  for (int i = 0; i < 5; i++) {
    print("Enter number : ");
    a.add(int.parse(stdin.readLineSync()!));
  }

  for (int i = 0; i < 5; i++) {
    for (int j = 0; j < 5; j++) {
      if (a[j] > a[i]) {
        temp = a[i];
        a[i] = a[j];
        a[j] = temp;
      }
    }
  }

  print(a);
}
