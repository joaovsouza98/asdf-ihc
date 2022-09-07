class Bloco {
  String nome;
  int totalApto;
  List<int> numeroApartamentos;

  Bloco({required this.nome, required this.totalApto, required this.numeroApartamentos});

  // Bloco.fromJson(Map<String, dynamic> json) {
  //   nomeBloco = json['NomeBloco'];
  //   totalApto = json['TotalApto'];
  //   numeroApartamento = json['NumeroApartamento'];
  // }

  // Map<String, dynamic> toJson() {
  //   final Map<String, dynamic> data = <String, dynamic>{};
  //   data['NomeBloco'] = nomeBloco;
  //   data['TotalApto'] = totalApto;
  //   data['NumeroApartamento'] = numeroApartamento;
  //   return data;
  // }
}