import 'package:flutter/material.dart';
import 'package:jornadagetx_gerenciadeestado/tipos/model/aluno2_model.dart';
import 'package:jornadagetx_gerenciadeestado/tipos/model/aluno3_model.dart';
import 'package:jornadagetx_gerenciadeestado/tipos/model/aluno_model.dart';
import 'package:get/get.dart';
import 'package:jornadagetx_gerenciadeestado/tipos/model/endereco_model.dart';

class TiposReativosComObjetosPage extends StatelessWidget {
  final alunoModel = AlunoModel(nome: 'a').obs;
  final aluno2Model = Rxn<Aluno2Model>();
  final aluno3Model = Rxn<Aluno3Model>();

  TiposReativosComObjetosPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Tipos Reativos Com Objetos'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('====> Objetos sem atributo final'),
            Obx(() => Text('AlunoModel.nome ${alunoModel.value.nome}')),
            ElevatedButton(
              onPressed: () {
                alunoModel.value.nome = 'b';
                alunoModel.refresh();
              },
              child: const Text('Change with refresh'),
            ),
            ElevatedButton(
              onPressed: () {
                alunoModel.value = alunoModel.value.copyWith(nome: 'c');
              },
              child: const Text('Change with copyWith'),
            ),
            ElevatedButton(
              onPressed: () {
                alunoModel(AlunoModel(nome: 'd'));
              },
              child: const Text('Change with ()'),
            ),
            ElevatedButton(
              onPressed: () {
                alunoModel.update((val) {
                  val?.nome = 'e';
                });
              },
              child: const Text('Change with update'),
            ),
            const Text('====> Objetos COM atributo final'),
            Obx(() => Text('Aluno2Model.nome ${aluno2Model.value?.nome}')),
            // ElevatedButton(
            //   onPressed: () {
            //     //Nao pode usar set direto pq nome é final
            //     aluno2Model.value.nome = 'b';
            //     aluno2Model.refresh();
            //   },
            //   child: const Text('Change with refresh.'),
            // ),
            ElevatedButton(
              onPressed: () {
                aluno2Model(Aluno2Model(nome: 'd'));
              },
              child: const Text('Change with () //Pois tem q criar era null'),
            ),
            ElevatedButton(
              onPressed: () {
                aluno2Model.value = aluno2Model.value?.copyWith(nome: 'c');
              },
              child: const Text('Change with copyWith'),
            ),

            // ElevatedButton(
            //   onPressed: () {
            //     //  Nao pode usar update pq nome é final
            //     aluno2Model.update((val) {
            //       val?.nome = 'e';
            //     });
            //   },
            //   child: const Text('Change with update'),
            // ),
            const Text('====> Objetos COM atributo outra classe'),
            Obx(() => Text('Aluno3Model.nome ${aluno3Model.value?.nome}')),
            Obx(() => Text(
                'Aluno3Model.enderecoModel.cep ${aluno3Model.value?.enderecoModel?.cep}')),
            // ElevatedButton(
            //   onPressed: () {
            //     //Nao pode usar set direto pq nome é final
            //     aluno3Model.value?.enderecoModel?.cep = 'b';
            //     aluno3Model.refresh();
            //   },
            //   child: const Text('Change with refresh.'),
            // ),
            ElevatedButton(
              onPressed: () {
                aluno3Model(Aluno3Model(
                    nome: 'a', enderecoModel: EnderecoModel(cep: '1')));
              },
              child: const Text('Change with () //Pois tem q criar era null'),
            ),
            ElevatedButton(
              onPressed: () {
                aluno3Model.value = aluno3Model.value?.copyWith(nome: 'c');
              },
              child: const Text('Change with copyWith'),
            ),

            // ElevatedButton(
            //   onPressed: () {
            //     //  Nao pode usar update pq nome é final
            //     aluno3Model.update((val) {
            //       val?.nome = 'e';
            //     });
            //   },
            //   child: const Text('Change with update'),
            // ),
          ],
        ),
      ),
    );
  }
}
