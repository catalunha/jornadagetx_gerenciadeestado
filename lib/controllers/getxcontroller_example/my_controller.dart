import 'package:get/get.dart';

class MyController extends GetxController {
  final _msg = 'Olá...'.obs;
  String get msg => _msg.value;
  @override
  Future<void> onInit() async {
    super.onInit();
    await 2.seconds.delay();
    print('onInit');
  }

  @override
  void onReady() {
    print('onReady');
    super.onReady();
  }

  @override
  void onClose() {
    print('onClose');
    super.onClose();
  }

  void alterarMsg() {
    _msg.value = 'Oi';
  }
}
