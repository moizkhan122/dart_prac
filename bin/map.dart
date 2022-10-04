import 'package:dart_application_1/dart_application_1.dart' as dart_application_1;

void main(List<String> args) {
  /*
  var myobject = {
    'name' : 'moiz',  //var axxcept anytype of value
    'age' : 21,
  };

  //print(myobject['name']);
  //print(myobject);
  //map is not iterable not call from forloop and cannot  axxcess value from index
  //so here we have a foreach function to access all va;ue from map

  myobject.forEach((key, value) {
    print(key);
  });

  //to convert in list
  print(myobject.values.toList());

  //but if initialize datatype to its gives us error 
  //if we set The Map with const so we cant modified it add/remove
 const Map<String, dynamic> mybj = { //type dynamic axxcept anytype of datatype in it
    'names' : 'Moiz',
    'Age' : 21,
    'color' : 'brown'
  };
  */
      //Map in Map for Arrangement of data and access savely
      Set FailNames = {};
      Map<String ,Map<String,int>> showresult  = {
          'science' : {
            'moiz' : 70,
            'asim' :50,
            'aqib' : 35,
          },
          'Math' : {
            'moiz' : 80,
            'asim' :38,
            'aqib' : 30,
          },
          'Urdu' : {
            'moiz' : 120,
            'asim' :20,
            'aqib' : 65,
          }
      };
              //sorting failed students name
        //and know accessing the data
        showresult.forEach((key, scores) { 
              scores.forEach((key, value) {
                if(value < 40){
                    //add all failed student name in Failednames Set
                FailNames.add(key);
                }
              });
        });
        print(FailNames);
}