import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: () {
                  Get.toNamed('/basico_reatividade');
                },
                child: const Text('Basico reatividade'),
              ),
              ElevatedButton(
                onPressed: () {
                  Get.toNamed('/tipos_reativos');
                },
                child: const Text('Tipos Reativos'),
              ),
              ElevatedButton(
                onPressed: () {
                  Get.toNamed('/tipos_reativos_genericos');
                },
                child: const Text('Tipos Reativos Genericos'),
              ),
              ElevatedButton(
                onPressed: () {
                  Get.toNamed('/tipos_reativos_genericos_nulos');
                },
                child: const Text('Tipos Reativos Genericos Nulos'),
              ),
              ElevatedButton(
                onPressed: () {
                  Get.toNamed('/tipos_reativos_com_obs');
                },
                child: const Text('Tipos Reativos Com .obs'),
              ),
              ElevatedButton(
                onPressed: () {
                  Get.toNamed('/tipos_reativos_com_objetos');
                },
                child: const Text('Tipos Reativos Com Objetos'),
              ),
              ElevatedButton(
                onPressed: () {
                  Get.toNamed('/controllers');
                },
                child: const Text('GetX Controllers'),
              ),
              ElevatedButton(
                onPressed: () {
                  Get.toNamed('/first_rebuild');
                },
                child: const Text('First Rebuild'),
              ),
              ElevatedButton(
                onPressed: () {
                  Get.toNamed('/getbuilder');
                },
                child: const Text('GetBuilder'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
