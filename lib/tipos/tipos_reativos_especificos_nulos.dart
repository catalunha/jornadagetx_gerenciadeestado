import 'package:get/get.dart';

class TiposReativosEspecificosNulos {
  final varString = RxString('Msg Qq');
  final varBool = RxBool(true);
  final varInt = RxInt(0);
  final varDouble = RxDouble(0.0);
  void metodosBool() {
    varBool.toggle();
    varBool.isFalse;
    varBool.isTrue;
  }
}
