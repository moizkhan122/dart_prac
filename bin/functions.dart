import 'dart:ffi';
import 'dart:math';

void main(List<String> args) {
  //printName("moiz");
  int yourNum = Random().nextInt(6)+1;
  print("your number is $yourNum");
  int SystemNum = Random().nextInt(6)+1;
   print("your number is $SystemNum");
   checkEqual(yourNum, SystemNum);
}
/*void printName(String name,{int? age = 0}){//for null value we assign question mark end set in square brackets
      print("My name is $name, And my age is $age");
  }* */
  void checkEqual(int num1,Num2){
    if(num1 == Num2){
      print("its a tie!!!");
    }else if(num1 > Num2){
      print("Your won the game");
    }else{
      print("your lose it!");
    }
  }
