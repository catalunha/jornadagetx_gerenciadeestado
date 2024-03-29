import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:jornadagetx_gerenciadeestado/tipos/model/aluno_model.dart';

class TiposReativosGenericosPage extends StatelessWidget {
  final varString = Rx<String>('Msg Qq');
  final varBool = Rx<bool>(true);
  final varInt = Rx<int>(0);
  final varDouble = Rx<double>(0.0);
  final varList = Rx<List<String>>([
    'a',
    'b',
  ]);
  final varMap = Rx<Map<String, dynamic>>({
    'a': 'a1',
    'b': 'b1',
  });
  final alunoModel = Rx<AlunoModel>(AlunoModel(nome: 'alunoA'));

  TiposReativosGenericosPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Tipos reativos genericos'),
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
                  children:
                      varList.value.map((element) => Text(element)).toList(),
                )),
            ElevatedButton(
              onPressed: () {
                varList.value.add('c');
                varList.refresh();
              },
              child: const Text('Change List'),
            ),
            Obx(() => Column(
                  children: varMap.value.entries
                      .map((e) => Text('${e.key} => ${e.value}'))
                      .toList(),
                )),
            ElevatedButton(
              onPressed: () {
                varMap.value['a'] = 'a12';
                varMap.refresh();
              },
              child: const Text('Change Map'),
            ),
            Obx(() => Text('alunoModel: ${alunoModel.value.nome}')),
            ElevatedButton(
              onPressed: () {
                alunoModel.value.nome = 'alunoB';
                alunoModel.refresh();
              },
              child: const Text('Change campo AlunoModel'),
            ),
            ElevatedButton(
              onPressed: () {
                alunoModel.value = AlunoModel(nome: 'alunoC');
                alunoModel.refresh();
              },
              child: const Text('Change1 todo AlunoModel'),
            ),
            ElevatedButton(
              onPressed: () {
                alunoModel(AlunoModel(nome: 'alunoD'));
              },
              child: const Text('Change2 todo AlunoModel'),
            ),
          ]),
        ),
      ),
    );
  }
}
