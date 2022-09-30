class AlunoModel {
  String nome;
  AlunoModel({
    required this.nome,
  });

  AlunoModel copyWith({
    String? nome,
  }) {
    return AlunoModel(
      nome: nome ?? this.nome,
    );
  }
}
