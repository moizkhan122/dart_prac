
  class backAcccount{

      backAcccount({required this.AccTitle,this.CurrentBalance =0});
 

    int CurrentBalance;
    String AccTitle;
    List<int> transactioNs= [];

    bool deposit(int amount){
      CurrentBalance += amount;
      transactioNs.add(amount);
      return true;
    }
    bool Withdraw(int amount){
      if(CurrentBalance > amount){
         CurrentBalance -= amount;
      transactioNs.add(-amount);
      return true;
      }
      return false;
    }
    void Transactions(){
        if(transactioNs.isEmpty){
          print("No transaction found");
        }else{
          transactioNs.forEach((element) {
            print(element);
          });
        }
      }
    String getTitle() => AccTitle;

    int CurrtBalance() => CurrentBalance;
  }

void main(List<String> args) {
      backAcccount acccount1 = backAcccount(AccTitle: "MoizKhan");
      print("My account title is : ${acccount1.AccTitle}");
      print("The initial bank balance is ${acccount1.CurrentBalance}");
      acccount1.Transactions();
      acccount1.deposit(1000);
         print("The initial bank balance is ${acccount1.CurrentBalance}");
      acccount1.Transactions();
      acccount1.Withdraw(500);
      acccount1.Transactions();
         print("The initial bank balance is ${acccount1.CurrentBalance}");

}