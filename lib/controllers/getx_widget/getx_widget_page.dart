import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:jornadagetx_gerenciadeestado/controllers/getx_widget/getx_widget_controller.dart';

class GetxWidgetPage extends StatelessWidget {
  const GetxWidgetPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('GetX Widget'),
      ),
      body: Center(
        child: GetX<GetxWidgetController>(
          init: GetxWidgetController(),
          builder: (controller) {
            return Column(
              children: [
                Text(controller.msg),
                ElevatedButton(
                    onPressed: () {
                      controller.alterarMsg();
                    },
                    child: const Text('Alterar Msg'))
              ],
            );
          },
        ),
      ),
    );
  }
}
