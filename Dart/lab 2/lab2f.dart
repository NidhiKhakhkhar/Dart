import 'dart:io';

void main(List<String> args) {
  print("Enter an experssion");
  double ans= double.parse(stdin.readLineSync()!);
  bool tp=true;
  while(tp){
   String opr = stdin.readLineSync()!;
   if (opr.compareTo('=')==0) break;
   switch (opr) {
     case '+': ans+=double.parse(stdin.readLineSync()!); 
       
       break;
    case '-': ans-=double.parse(stdin.readLineSync()!); 
       
       break;
    case '*': ans*=double.parse(stdin.readLineSync()!); 
       
       break;
    case '/': ans/=double.parse(stdin.readLineSync()!); 
       
       break;
    default: print("Invalid opertaion");
    tp = false;
   }
  }
 if(tp)
  print(ans);
  
}