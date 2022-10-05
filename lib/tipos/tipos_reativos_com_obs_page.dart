import 'package:flutter/material.dart';
import 'package:get/get.dart';

class TiposReativosComObsPage extends StatelessWidget {
  final varString = 'Msg Qq'.obs;
  final varBool = true.obs;
  final varInt = 0.obs;
  final varDouble = 0.0.obs;
  final varList = [
    'a',
    'b',
  ].obs;
  final varMap = {
    'a': 'a1',
    'b': 'b1',
  }.obs;

  TiposReativosComObsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Tipos reativos com obs'),
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
              child: const Text('Change1 List'),
            ),
            ElevatedButton(
              onPressed: () {
                var temp = ['a', 'b'];
                varList(temp);
              },
              child: const Text('Change2 List'),
            ),
            ElevatedButton(
              onPressed: () {
                var temp = ['a', 'b'];
                varList.value = temp;
              },
              child: const Text('Change3 List'),
            ),
            Obx(() => Column(
                  children: varMap.entries
                      .map((e) => Text('${e.key} => ${e.value}'))
                      .toList(),
                )),
            ElevatedButton(
              onPressed: () {
                varMap['c'] = 'c1';
              },
              child: const Text('Change1 Map'),
            ),
            ElevatedButton(
              onPressed: () {
                var temp = {'a': 'a1', 'b': 'b1'};
                varMap(temp);
              },
              child: const Text('Change2 Map'),
            ),
            ElevatedButton(
              onPressed: () {
                var temp = {'a': 'a1', 'b': 'b1'};
                varMap.value = temp;
              },
              child: const Text('Change3 Map'),
            ),
          ]),
        ),
      ),
    );
  }
}
