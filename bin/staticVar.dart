
class name{
  static final Name = "moiz";
  static final FullName = "Khan";

  static void printName(){
    print("My name is $Name, And my sir name is : $FullName");
  }
}
void main(List<String> args) {
    //name class has Static type so object is not important
    name.printName();
}