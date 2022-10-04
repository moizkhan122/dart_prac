void main(List<String> args) {
  
  List<String> DaysNames = ['Monday','tuesday','wednesday','thursday','friday','saturday','sunday'];

  //if there is a nullvalue coming from somewhere so we put a null safety question mark ? on datatype
  List<double?> wrkgHrs = [1,2.2,1.5,1.9,2.1,2.4,null];//if we dont set null safety so may be our App will be crashed

 for(int i =0;i<wrkgHrs.length;i++){
                          //if we want to round of values so where also put the null safety bcz if there is a null value so its not be round off
  print("${DaysNames[i]} : ${wrkgHrs[i]?.round()}");
 }
}