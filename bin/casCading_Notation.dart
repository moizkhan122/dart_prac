class student{
  int id;
  String name;
  String? shift;
  String? day;

  student({required this.id,required this.name});

  String toString(){
    return 'id : ${id}, name = $name, shift = $shift, day = $day';
  }
}

void main(List<String> args) {                    //second day called Cascading notation
  student student1 = student(id: 1, name: "moiz") ..day = "monday" ..shift = "Evening";
  
  /* way 1 to initialize
  student1.day = "monday";
  student1.shift = "evening";
*/
  print(student1);
}