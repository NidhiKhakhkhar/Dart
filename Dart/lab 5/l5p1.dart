// Create a class named Candidate with Candidate_ID, Candidate_Name, Candidate_Age,
// Candidate_Weight and Candidate_Height as data members. Create a method
// GetCandidateDetails() and DisplayCandidateDetails(). Create a main method to demonstrate
// the Candidate class.

import 'dart:io';

class Candidate {
  int? Candidate_ID;
  String? Candidate_Name;
  double? Candidate_Age, Candidate_Weight, Candidate_Height;

  void GetCandidateDetails() {
    print("Enter Candidate_ID : ");
    Candidate_ID = int.parse(stdin.readLineSync()!);
    print("Enter Candidate Name : ");
    Candidate_Name = stdin.readLineSync()!;
    print("Enter Candidate Age : ");
    Candidate_Age = double.parse(stdin.readLineSync()!);
    print("Enter Candidate Weigth : ");
    Candidate_Weight = double.parse(stdin.readLineSync()!);
    print("Enter Candidate Heigth : ");
    Candidate_Height = double.parse(stdin.readLineSync()!);
  }

  void DisplayCandidateDetails() {
    print("Candidate_id : $Candidate_ID");
    print("Candidate_Name : $Candidate_Name");
    print("Candidate_Age : $Candidate_Age");
    print("Candidate_Weight : $Candidate_Weight");
    print("Candidate_Height : $Candidate_Height");
  }
}

void main(List<String> args) {
  Candidate c1 = Candidate();
  c1.GetCandidateDetails();
  c1.DisplayCandidateDetails();
}
