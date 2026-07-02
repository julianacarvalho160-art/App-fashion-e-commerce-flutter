// Create a name of table
final String tableProducts = 'products';

class ProductsModels {
  final int? id;
  final String nome;
  final double preco;
  final String tamanho;

  ProductsModels({
    required this.id,
    required this.nome,
    required this.preco,
    required this.tamanho,
  });

  // Converts the Dart object to a Map (used when saving/updating in the database).
  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      "id": id,
      "nome": nome,
      "preco": preco,
      "tamanho": tamanho,
    };
  }

  // Converts a Map from the database into a Dart object (used when reading data).
  factory ProductsModels.fromMap(Map<String, dynamic> map) {
    return ProductsModels(
      id: map['id'],
      nome: map['nome'],
      preco: map['preco'],
      tamanho: map['tamanho'],
    );
  }
}
