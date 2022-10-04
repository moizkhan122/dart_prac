    class car{
      String? name;
      int wheels = 4;

      //constructor
      car(String name){
          this.name = name;
      }

      void CarColor(){
        print("my car name is $name");
      }
      int CarWheels(){
        print("Car wheels are : $wheels");
      return wheels;
      }
    }
void main(List<String> args) {
  //  instance/object
  car Mycar = car("Moiz");
  //Mycar.name = "moiz";
 Mycar.CarColor();

 car Mycar2 = car("khan");
 Mycar2.CarColor();
}