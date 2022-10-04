
                    //trick to not giving value repeating if some vales are same
class student{
  int id;
  String name;
  String shift;
  String course;

  student({required this.id,required this.name,required this.shift,required this.course,});

  String toString(){
    return 'id : ${id}, name = $name, shift = $shift, day = $course';
  }
  student copyWith({required int id , required String name,String? shift,String? course}){
    return student(id: id,
     name: name,  //if shift is null so assign student1 value with the help of this.shift/this.course
      shift: shift ?? this.shift,
       course: course ?? this.course,
       );
  }
}

void main(List<String> args){
      student student1 = student(id: 1, name: "moiz",shift: "morning",course: "Dart");

      //copyWith
      student student2 = student1.copyWith(id: 2, name:"asim");
      student student3 = student1.copyWith(id: 3, name:"aqib");
      student student4 = student1.copyWith(id: 4, name:"yasir");
      student student5 = student1.copyWith(id: 5, name:"ameen",shift :"evening");

      print(student1);
      print(student2);
      print(student3);
      print(student4);
      print(student5);

}