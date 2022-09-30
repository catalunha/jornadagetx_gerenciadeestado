import 'package:get/get.dart';

class WorkersController extends GetxController {
  final _workers = <Worker>[];
  final _msg = 'a'.obs;
  String get msg => _msg.value;

  @override
  void onInit() {
    // final everWorker = ever(
    //   _msg,
    //   (value) {
    //     print('Executando worker ever $value');
    //   },
    //   // cancelOnError: true,
    //   // condition: () => _msg.value == 'a',
    // );
    // _workers.add(everWorker);
    // final onceWorker = once<String>(
    //   _msg,
    //   (value) {
    //     print('once $value');
    //   },
    // );
    // _workers.add(onceWorker);
    // final intervalWorker = interval<String>(_msg, (value) {
    // chama a cada time
    //   print('**********');
    //   print(value);
    //   print('**********');
    // }, time: const Duration(seconds: 2));
    // _workers.add(intervalWorker);
    final debounceWorker = debounce(_msg, (value) {
      // só executa se parado por 800 milisegundos.
      print('**********');
      print(value);
      print('**********');
    });
    _workers.add(debounceWorker);

    super.onInit();
  }

  void alterarMsg(String value) {
    _msg(value);
  }

  @override
  void onClose() {
    for (var worker in _workers) {
      worker(); //dispose todo workers da lista
    }
    super.onClose();
  }
}
