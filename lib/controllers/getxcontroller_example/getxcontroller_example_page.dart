import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:jornadagetx_gerenciadeestado/controllers/getxcontroller_example/my_controller.dart';

class GetxcontrollerExamplePage extends StatefulWidget {
  const GetxcontrollerExamplePage({Key? key}) : super(key: key);

  @override
  State<GetxcontrollerExamplePage> createState() =>
      _GetxcontrollerExamplePageState();
}

class _GetxcontrollerExamplePageState extends State<GetxcontrollerExamplePage> {
  @override
  Widget build(BuildContext context) {
    print('GetxcontrollerExamplePage build');
    return Scaffold(
      appBar: AppBar(
        title: const Text('GetX Controller Example'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Obx(() => Text(Get.find<MyController>().msg)),
            ElevatedButton(
              onPressed: () {
                Get.find<MyController>().alterarMsg();
              },
              child: const Text('Alterar msg'),
            ),
            ElevatedButton(
              onPressed: () {
                Get.reload<MyController>();
                //necessita do setState
                // e só funciona com o controller sendo criado pelo lazyPut
                setState(() {});
              },
              child: const Text('msg original'),
            ),
          ],
        ),
      ),
    );
  }
}
