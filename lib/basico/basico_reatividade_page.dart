import 'package:flutter/material.dart';
import 'package:get/get.dart';

class BasicoReatividadePage extends StatelessWidget {
  final _counter = 0.obs;
  BasicoReatividadePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Basico Reatividade'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('Counter'),
            Obx(() => Text('${_counter.value}')),
            ElevatedButton(
              onPressed: () {
                _counter.value++;
              },
              child: const Text('Increase'),
            ),
          ],
        ),
      ),
    );
  }
}
