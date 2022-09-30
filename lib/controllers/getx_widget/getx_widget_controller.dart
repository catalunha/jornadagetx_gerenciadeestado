import 'package:get/get.dart';

class GetxWidgetController extends GetxController {
  final _msg = 'a'.obs;
  String get msg => _msg.value;
  void alterarMsg() {
    _msg('b');
  }
}
