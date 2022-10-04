void main(List<String> args)async {

  final stream = Stream.fromIterable([5,4,3,2,1]);
  //print(stream);//output : Instance of '_GeneratedStreamImpl<int>'
  //print(stream.toList());//output : Instance of 'Future<List<int>>'
  //print(await stream.toList());//output : [5, 4, 3, 2, 1]

 // stream.listen((event) {print(event);});//output is 5, 4, 3, 2, 1

 final sum = await sumStream(stream);
 print('The sum is : $sum');
}
Future<int> sumStream(Stream<int> stream)async{
  int sum = 0;
    await for(int value in stream) {
      await Future.delayed(Duration(seconds: 2));
      print(value);
      sum += value;
  }
  return sum; 
}