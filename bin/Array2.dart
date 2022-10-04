import 'package:dart_application_1/dart_application_1.dart' as dart_application_1;

void main(List<String> args) {
  List<int> nums = [12,13,14,15,16,17,18];

  int sum = 0;

/* nums = nums.map((e) {
    return e*2;
  },).toList();

  for(int f in nums){
    sum += f;
  }
  print(sum); //210* */
  
  //for sorting
  List<int> num2 = nums.where((element) => element>15).toList();
  //output is 16,17,18
  print(num2);
  print(nums);
}