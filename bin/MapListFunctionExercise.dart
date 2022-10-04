void main(List<String> args) {
  
  List<Map> StudentRecords = [
    {'name' : 'BBA-Morning','StudentLists' : [20,12,34,56,87,23,56]},
    {'name' : 'MBA-Morning','StudentLists' : [22,32.0,33,16,37,23,46]},
    {'name' : 'BBA-Evennig','StudentLists' : []},
  ];
  //findd the average of all programs of students by functions
   gEtAllaVerage(StudentRecords);
}
void gEtAllaVerage(List<Map> records){
        //accesss all data of StudentRecords
        records.forEach((element) {
          double AvgAgeOfStudent = GetAverageAge(element['StudentLists']);

          print("The average Age in ${element['name']} is $AvgAgeOfStudent");
        });
}
double GetAverageAge(List<dynamic> AgeList){

    double TotalAge = 0;
    AgeList.forEach((element) {
     TotalAge += element;
    });    //for convert big digit double in 2 digit first we convert tostring as 2 digit then parse in double for return
      return double.parse((TotalAge/AgeList.length).toStringAsFixed(2)); 
}
