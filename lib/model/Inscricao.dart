class inscricao {
  final int comNrId;
  final String atlTxNome;

  inscricao({
    required this.comNrId,
    required this.atlTxNome,
  });

  factory inscricao.fromJson(Map<String, dynamic> json) {
    return inscricao(
      comNrId: json['comNrId'],
      atlTxNome: json['atlTxNome'],
    );
  }
}