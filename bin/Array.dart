
import 'dart:ffi';

import 'package:dart_application_1/dart_application_1.dart' as dart_application_1;

void main(List<String> args) {
  var anArray = ["Moiz","Ali","Amir","Aqib","Asim"];
  var IntArray = [12,23,4,5,76,76,1,22];
  int sum = 0;

//for loop
/*
for(int i=0;i<anArray.length;i++){
  print(anArray[i]+" ");
}

  //for eachloop/for in loop
  for(String elements in anArray){
    print(elements);
  }*/
  for(int i=0;i<IntArray.length;i++){
     sum = sum + IntArray[i];
  }
  print(sum);
}