import 'package:siemens/dartexs/demo_interfaces.dart';

class GeAppliances implements SwitchBoardListener{
  @override
  void switchFour() {
    print("switch 4 is switching on  ge AC");
  }

  @override
  void switchOne() {
    print("switch 1 is switching on ge light");
  }

  @override
  void switchThree() {
    print("switch 3 is switching on ge tubelight");
  }

  @override
  void switchTwo() {
    print("switch 2 is switching on ge water purifier");
  }
}