void main(List<String> args) {
  int salary = 10000;
  //if u guess there is any value which is come from somewhere user/database so we asign here a question mark ? sign
  int? bonus;

  //first way
  //end check with if/else condition
  /*
  if(bonus != null){
    print(salary+bonus);
  }else{
    print(salary);
  }
*/
  //second way
  if(salary<12000){
    bonus =  500;
  }
  //is bonus not not equal to null so assign 0 there
  bonus ??= 0;
  print(salary+bonus); 

}