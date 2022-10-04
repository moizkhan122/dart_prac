import 'dart:io';
import 'dart:math';

import 'package:dart_application_1/dart_application_1.dart' as dart_application_1;

void main(List<String> arguments) {
  int score = 0;

  while(true){
    stdout.write("Enter number btw 1 to 5 : ");  //ask num from user
     final userInput = stdin.readLineSync();  //taking input

     int randNum = Random().nextInt(5)+1; //start from 0 thats why we add +1

     if(userInput == null){
      print("enter a number!!!");
     }
     else if(userInput.toLowerCase() == "exit"){
            print("Your score is $score");
            break;
     }
     else if(userInput == randNum.toString()){
      print("You winn The gae Wow.....");
      score++;
      print("Enter Your score is $score");
     }else{
      print("Try again your input is $userInput and System number is $randNum");
     }
  }
}
