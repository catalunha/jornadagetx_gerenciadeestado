import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:jornadagetx_gerenciadeestado/getbuilder/get_builder_controller.dart';

class GetBuilderPage extends StatelessWidget {
  const GetBuilderPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('GetBuilder'),
      ),
      body: Center(
        child: GetBuilder<GetBuilderController>(builder: (controller) {
          debugPrint('*** GetBuilder geral  *** ');

          return Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(controller.msg),
              GetBuilder<GetBuilderController>(
                  id: 'contador',
                  builder: (controller) {
                    debugPrint('*** GetBuilder contador *** ');
                    return Text('${controller.contador}');
                  }),
              ElevatedButton(
                onPressed: () {
                  controller.alterarMsg();
                },
                child: const Text('Alterar valor'),
              ),
              ElevatedButton(
                onPressed: () {
                  controller.increment();
                },
                child: const Text('Alterar contador'),
              )
            ],
          );
        }),
      ),
    );
  }
}
