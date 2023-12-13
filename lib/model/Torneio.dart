class Torneio {
  final int comNrId;
  final String comTxNome;

  Torneio({
    required this.comNrId,
    required this.comTxNome,
  });

  factory Torneio.fromJson(Map<String, dynamic> json) {
    return Torneio(
      comNrId: json['comNrId'],
      comTxNome: json['comTxNome'],
    );
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {
      'comNrId': this.comNrId,
      'comTxNome': this.comTxNome,
    };
    return data;
  }
}
