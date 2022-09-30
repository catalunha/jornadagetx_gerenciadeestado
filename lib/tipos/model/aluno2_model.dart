class Aluno2Model {
  final String nome;
  Aluno2Model({
    required this.nome,
  });

  Aluno2Model copyWith({
    String? nome,
  }) {
    return Aluno2Model(
      nome: nome ?? this.nome,
    );
  }
}
