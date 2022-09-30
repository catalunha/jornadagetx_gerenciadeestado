import 'package:get/get.dart';

class GetBuilderController extends GetxController {
  String msg = 'a';
  int contador = 0;

  alterarMsg() {
    msg = 'b';
    update();
  }

  increment() {
    contador++;
    update(['contador']);
  }
}
