// Create a name of table
final String tableProducts = 'products';

//Create a field (campo) of the class attributes
class ProductsField {
  static final String id = '_id';
  static final String nome = '_nome';
  static final String preco = '_preco';
  static final String tamanho = '_tamanho';
}

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

  //
}
// click na imagem -> Janela com informações sobre o produto e um botão de add ao carrinho
// CREATE -> ADD COMPRA
// UPDATE -> LISTA DE COMPRAS
// REMOVE -> REMOVER PRODUTO DA LISTA

// https://docs.flutter.dev/cookbook/persistence/sqlite

// https://github.com/amritms/simple-note-flutter/blob/master/lib/mynote.dart
