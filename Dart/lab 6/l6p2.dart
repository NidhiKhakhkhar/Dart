// Write a dart code to read 2 lists and return a list that contains only the elements that are
// common between them.
import 'dart:io';

void main(List<String> args) {
  List<int> l1 = [];
  List<int> l2 = [];
  print("For list 1 :");
  for (int i = 0; i < 5; i++) {
    print("Enter number : ");
    l1.add(int.parse(stdin.readLineSync()!));
  }
  print("For list 2:");
  for (int i = 0; i < 5; i++) {
    print("Enter number : ");
    l2.add(int.parse(stdin.readLineSync()!));
  }

  List<int> l3 = [];
  for (int i = 0; i < l1.length; i++) {
    for (int j = 0; j < l2.length; j++) {
      if (l1[i] == l2[j]) {
        l3.add(l1[i]);
      }
    }
  }
  print(l3);
}
