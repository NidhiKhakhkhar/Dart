// Write a dart code that creates a List with the following values: “Delhi”, “Mumbai”, “Bangalore”,
// “Hyderabad” and “Ahmedabad”. Replace “Ahmedabad” with “Surat” in the above List.
// Write a dart code to create and read a phonebook dictionary.

import 'dart:io';

void main(List<String> args) {
  List list = ["Delhi", "Mumbai", "Banglore", "Hydrabad", "Ahmedabad"];
  print(list);
  print("Enter Existing value : ");
  var selected = stdin.readLineSync();
  print("Enter Replacing value : ");
  var newValue = stdin.readLineSync();
  var index = list.indexOf(selected);
  list.replaceRange(index, index + 1, [newValue]);
  print(list);
}
