//future is used for when data will commming from server/databse have hsome time

import 'package:test/expect.dart';

Future<Map<String,String>> fetchIngData(){
  return Future.delayed(Duration(seconds: 2), () => {'name' : 'moiz'});
}
Future<Map<String,String>> fetchData(){
  return Future.delayed(Duration(seconds: 2), () => {'age' : '21'});
}

void main(List<String> args)async{
    //fetchIngData().then((value) => print("khan")).catchError((error) => print(error)).whenComplete(() => print("Moizkhan"));
    try {
      final value = await fetchIngData();
    print('The name of the User is ${value['name']}');
    final value2 = await fetchIngData();
    print('The age of the User is ${value2['age']}');
    } catch (e) {
     prints(e); 
    }finally{
      prints("End");
    }  
}