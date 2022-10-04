extension sumFunctionality on Iterable<int>{
  int sum() => reduce((value, element) => value+element);
}
extension sumFuncAllType<T extends num> on Iterable<T>{
  T sum() => reduce((value, element) => (value+element) as T);
}
void main(List<String> args) {
  List<int> myList = [1,2,3,4];
  List<double> myList2 = [1.5,2.5,3.5,4.5];

  int suMInt = myList.sum();
  double DoubleSum = myList2.sum();

  print(suMInt);  //sum of list
  print(DoubleSum);
}