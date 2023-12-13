class CadTorneio {
  final String comTxNome;

  CadTorneio({
    required this.comTxNome,
  });

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {
      'comTxNome': this.comTxNome,
    };
    return data;
  }
}
