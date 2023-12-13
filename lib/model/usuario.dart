class usuario {
  final int comNrId;
  final String atlTxNome;

  usuario({
    required this.comNrId,
    required this.atlTxNome,
  });

  factory usuario.fromJson(Map<String, dynamic> json) {
    return usuario(
      comNrId: json['comNrId'],
      atlTxNome: json['atlTxNome'],
    );
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {
      'comNrId': this.comNrId,
      'atlTxNome': this.atlTxNome,
    };
    return data;
  }
}
