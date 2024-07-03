

import 'package:siemens/dartexs/demo_interfaces.dart';
import 'package:siemens/dartexs/ge_appliances.dart';
import 'package:siemens/dartexs/havells_appliance.dart';

void main(){
  SwitchBoardListener switchBoardListener = GeAppliances();
  //HavellsAppliances();
  //kids clicking the switches
  switchBoardListener.switchOne();
  switchBoardListener.switchTwo();
  switchBoardListener.switchThree();
  switchBoardListener.switchFour();

}