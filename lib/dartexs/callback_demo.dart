import 'dart:io';
import 'dart:isolate';



void main(){
  print(abdulAdd(10, 20));
  //mySecrataryphno --- callback
  CallBackMobilePhone mySecrataryphno = MySecratary();
  ansariAdd(30,40,mySecrataryphno);
  print("conntinue wwwith my work without waiting for annsari to complete");
}

int abdulAdd(int a, int b){
  return a+b;
}

//you donn't know how much time it'll take to fetch the data from server/ query DB -- you'll go for a callback
void ansariAdd(int a, int b, CallBackMobilePhone mySecrataryphno){
  sleep(Duration(seconds:5));
  //return a+b;
  mySecrataryphno.onSuccess(a+b);
}

class MySecratary implements CallBackMobilePhone{

  @override
  void onSuccess(int sum) {
    print("conngrats you've added the nos and the sum is "+ '$sum');
  }

}



//java -- interface
class CallBackMobilePhone{
  void onSuccess(int sum){}
}