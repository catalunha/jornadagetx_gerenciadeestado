import 'package:jornadagetx_gerenciadeestado/tipos/model/endereco_model.dart';

class Aluno3Model {
  final String nome;
  final EnderecoModel? enderecoModel;
  Aluno3Model({
    required this.nome,
    this.enderecoModel,
  });

  Aluno3Model copyWith({
    String? nome,
    EnderecoModel? enderecoModel,
  }) {
    return Aluno3Model(
      nome: nome ?? this.nome,
      enderecoModel: enderecoModel ?? this.enderecoModel,
    );
  }
}
