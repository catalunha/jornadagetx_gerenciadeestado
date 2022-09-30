import 'package:flutter/material.dart';
import 'package:get/get.dart';

class TiposReativosPage extends StatelessWidget {
  final varString = RxString('Msg Qq');
  final varBool = RxBool(true);
  final varInt = RxInt(0);
  final varDouble = RxDouble(0.0);
  final varList = RxList([
    'a',
    'b',
  ]);
  final varMap = RxMap({
    'a': 'a1',
    'b': 'b1',
  });

  TiposReativosPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Tipos reativos'),
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(children: [
            Obx(() => Text('varString: $varString')),
            ElevatedButton(
              onPressed: () {
                varString.value = 'Change1 varString';
              },
              child: const Text('Change1 varString'),
            ),
            ElevatedButton(
              onPressed: () {
                varString('Change2 varString');
              },
              child: const Text('Change2 varString'),
            ),
            Obx(() => Text('varBool: $varBool')),
            ElevatedButton(
              onPressed: () {
                varBool.value = false;
              },
              child: const Text('Change1 varBool'),
            ),
            ElevatedButton(
              onPressed: () {
                varBool(true);
              },
              child: const Text('Change2 varBool'),
            ),
            Obx(() => Text('varInt: $varInt')),
            ElevatedButton(
              onPressed: () {
                varInt.value = 1;
              },
              child: const Text('Change1 varInt'),
            ),
            ElevatedButton(
              onPressed: () {
                varInt(2);
              },
              child: const Text('Change2 varInt'),
            ),
            Obx(() => Text('varDouble: $varDouble')),
            ElevatedButton(
              onPressed: () {
                varDouble.value = 0.1;
              },
              child: const Text('Change1 varDouble'),
            ),
            ElevatedButton(
              onPressed: () {
                varDouble(0.2);
              },
              child: const Text('Change2 varDouble'),
            ),
            Obx(() => Column(
                  children: varList.map((element) => Text(element)).toList(),
                )),
            ElevatedButton(
              onPressed: () {
                varList.add('c');
              },
              child: const Text('Change List'),
            ),
            Obx(() => Column(
                  children: varMap.entries
                      .map((e) => Text('${e.key} => ${e.value}'))
                      .toList(),
                )),
            ElevatedButton(
              onPressed: () {
                varMap['a'] = 'a12';
              },
              child: const Text('Change Map'),
            ),
          ]),
        ),
      ),
    );
  }
}
