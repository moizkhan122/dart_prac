import 'package:dart_application_1/dart_application_1.dart' as dart_application_1;
 void main(List<String> args) {
  //sets
  //Set names = {"moiz","amir","asim","moiz","aqib"};

  //print(names);//sets gives unique value not repeated.

  //print(names.toList());//transform into list

  var numss = {1,2,3,4,5,6,7,8,9,5};//45  //5 not add bcz we convert it into Set
  int sum = 0;
  
  numss.toSet();
  for (var element in numss) {
    sum = sum + element;
  }
  print(sum);

}