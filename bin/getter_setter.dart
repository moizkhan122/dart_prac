class backAccc{

      backAccc({required this.AccTitle,this.CurrentBalance =0});
 

    int CurrentBalance;
    String AccTitle;
    int dollaRate = 160;

    bool deposit(int amount){
      CurrentBalance += amount;
      return true;
    }
    bool Withdraw(int amount){
      if(CurrentBalance > amount){
         CurrentBalance -= amount;
      return true;
      }
      return false;
    }
          //setter
      void set DepositInDollar(int DollarAmount){
          CurrentBalance += DollarAmount * dollaRate; 
      }
          //getter
      void set withDrawInDollar(int DollarAmount){
          int pakRs = DollarAmount * dollaRate;
          if(CurrentBalance > pakRs){
            CurrentBalance -= pakRs;
          }
          else{
            print("Insufficient funds!");
          }
      }

    String getTitle() => AccTitle;

    int CurrtBalance() => CurrentBalance;

    double get BlanceInDollar => CurrentBalance/dollaRate; 
  }

void main(List<String> args) {
      backAccc acccount1 = backAccc(AccTitle: "MoizKhan");
      print("My account title is : ${acccount1.AccTitle}");
      print("The initial bank balance is ${acccount1.CurrentBalance}");

}