
  import 'staticVar.dart';

class person{

    person({required this.id,required this.name});//name perameter

    String id;
    String name;
    greet(){
      print("Name is $name");
    }
  }
  class student extends person{      //this super constructor is used for parent class parameter required 
    student({required id,required name,required this.fees}) : super (id: id,name: name);
    
    int fees;
  }
  class teacher extends person{
    teacher({required id,required name,required this.salary}):super (id: id,name: name);
    int? salary;
  }

void main(List<String> args) {
    student Student1 = student(id: "1",name: "moiz",fees: 500000);
    print(Student1.fees);
    Student1.greet();
    teacher teacher1 = teacher(id: "2", name: "Khan", salary: 120000);
    teacher1.greet();
    print(teacher1.salary);
}