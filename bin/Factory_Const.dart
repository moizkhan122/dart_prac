import 'package:test/expect.dart';

import 'staticVar.dart';

abstract class person{
  String name;

  person({required this.name});

  void getdetail(){}

  /*
  //..................normal Example
  //factory constructor
  factory person.fromType({required typename,required name, salary,fees}){
    if(typename.toString().toLowerCase() == 'trainer' && salary != null){
      return trainer(name: name, salary: salary);
    }else if(typename.toString().toLowerCase() == 'student' && fees != null){
      return student(name: name, fess: fees);
    }
    //if any argument missing so error accur
    throw UnimplementedError(
      'invalid typename or either Salary or fess property is missing',
    );
  }*/
//.......................End 

   //factory constructor for json data
  factory person.fromJson({required Map<String,Object>json}){
    final salary = json['salary'];
    final fee = json['fee'];
    final type = json['type'];
    final name = json['name'];

    var obj;
    switch (type){
      case 'trainer':
      if(salary != null){
        obj = trainer(name: name, salary: salary as int);
        break;
      }throw UnimplementedError(
        'salary isnt provide',
      );
      case 'student':
      if(fee != null){
        obj = student(name: name, fess: fee as int);
        break;
      }throw UnimplementedError(
        'Fees isnt provide',
      );

      default : UnimplementedError('Invalid Type');
    }
    return obj;
  }
}
  class trainer extends person{
    int salary;

    trainer({required name,required this.salary}) : super (name: name); 
    @override
  void getdetail() {
    // TODO: implement getdetail
    print("Trainer name is $name , and Salary is $salary");
  }
  }
  class student extends person{
    int fess;

    student({required name,required this.fess}) : super (name: name); 
    @override
  void getdetail() {
    // TODO: implement getdetail
    print("Trainer name is $name , and Salary is $fess");
  }
  }
void main(List<String> args) {
    final trainerA = person.fromJson(json: {'name' : "moiz", 'salary' : 5000, 'type' : "trainer"});
    final studentA = person.fromJson(json: {'name' : "asim", 'fee' : 1000, 'type' : "student"});

    trainerA.getdetail();
    studentA.getdetail();

}