class categoria {
  final int comNrId;
  final String atlTxNome;

  categoria({
    required this.comNrId,
    required this.atlTxNome,
  });

  factory categoria.fromJson(Map<String, dynamic> json) {
    return categoria(
      comNrId: json['comNrId'],
      atlTxNome: json['atlTxNome'],
    );
  }
}
