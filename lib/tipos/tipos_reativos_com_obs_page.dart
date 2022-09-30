import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:jornadagetx_gerenciadeestado/tipos/model/aluno_model.dart';

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
  final alunoModel = AlunoModel(nome: 'alunoA').obs;

  TiposReativosComObsPage({Key? key}) : super(key: key);

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
                  children: varList.map((element) => Text(element)).toList(),
                )),
            ElevatedButton(
              onPressed: () {
                varList.add('c');
                varList.refresh();
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
