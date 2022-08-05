
import 'dart:io';
import 'dart:math';

 void main(List<String> args) {
  
  List<int> userDices = [];
  List<int> pcDices = [];
  void delaytime(){
  for (int j=0;j<5; j++);
        print("...");

}

  int opinion = 0;
  Random randnum;
  randnum = new Random();
  int randomdice(int min, int max) => min + randnum.nextInt(max - min);

  while (opinion!=3){

    print("do u want to play a game ?! ");
    print("enter 1 for yes and 2 for no ! ");
    
    var awnswer = stdin.readLineSync().toString();

    if (awnswer=="1"){
      opinion +=1;
      print("ok ! here we go ... ");
      int cpDice = randomdice(1, 7);
      pcDices.add(cpDice);
      print("__"*10);
      print("plz push d for dice !!! ");
      String? pushkey;

      while(pushkey != "d"){
        pushkey = stdin.readLineSync().toString();
      }

      int usDice = randomdice(1, 7);
      userDices.add(usDice);

      print("your Dice is $usDice");
      print("__"*10);
      print("The pc Dice is ... ");
      delaytime();
      print(" pc Dice is $cpDice");

      print("you have to play for three Times !");
      print("lets Dice again ");

      



    }else{

      opinion=3;
      return print("ok ! good bye see you soon  ");

    }

  }

  int sumuser = 0;
  int sumpc = 0;
  for (int i in userDices){
    sumuser+=i;
  }
  for(int i in pcDices){
    sumpc +=i;
  }

  delaytime();
  print("your score is $sumuser");
  print("pc score is $sumpc");
  print("_"*10);
  if(sumuser>sumpc){

    print("the winner is the user !");

  }else{
    print("the winner is the pc! ");
  }

  }





   

  

  



