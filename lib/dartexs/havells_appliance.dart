import 'package:siemens/dartexs/demo_interfaces.dart';

class HavellsAppliances implements SwitchBoardListener{
  @override
  void switchFour() {
    print("switch 4 is switching on  havells AC");
  }

  @override
  void switchOne() {
    print("switch 1 is switching on havells light");
  }

  @override
  void switchThree() {
    print("switch 3 is switching on havells tubelight");
  }

  @override
  void switchTwo() {
    print("switch 2 is switching on havells water purifier");
  }
}