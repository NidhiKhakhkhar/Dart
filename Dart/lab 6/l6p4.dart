// Write a dart code to find friends’ details by their name using a dictionary. (Create a local
// dictionary and search from it using Map<String, Object?> & Model Class).

import 'dart:io';

void main(List<String> args) {
  Friend friend = Friend();
  print("Enter number of friends : ");
  int num = int.parse(stdin.readLineSync()!);
  for (var i = 0; i < num; i++) {
    print("Enter [${i + 1}] friends' detail : ");
    friend.getDetails();
  }
  print("Enter name of friend you want to find : ");
  friend.searchFriend(stdin.readLineSync(), callback: (i) {
    print("Data found @ Index : $i");
  });
}

class Friend {
  List<Map<String, dynamic>> friendList = [];

  void getDetails() {
    Map<String, dynamic> map = {};
    print("Enter Frends' name : ");
    map['name'] = stdin.readLineSync();
    print("Enter Friends' city : ");
    map['city'] = stdin.readLineSync();
    print("Enter Friends' age : ");
    map['age'] = int.parse(stdin.readLineSync()!);
    friendList.add(map);
  }

  void displayDetails() {
    for (int i = 0; i < friendList.length; i++) {
      Map<String, dynamic> map = friendList[i];
      print("Friends' Name : ${map['name']}");
      print("Friends' City : ${map['city']}");
      print("Friends' Age : ${map['age']}");
    }
  }

  void searchFriend(name, {Function? callback}) {
    for (int i = 0; i < friendList.length; i++) {
      if (friendList[i]['name'].toString().toLowerCase() ==
          name.toString().toLowerCase()) {
        callback!(i);
        return;
      }
    }
  }
}
