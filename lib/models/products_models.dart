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

// Converte o Objeto Dart para um Mapa (usado ao Salvar/Atualizar no Banco)
  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      "id": id,
      "nome": nome,
      "preco": preco,
      "tamanho": tamanho,
     
    };
  }
// Converte um Mapa vindo do Banco para um Objeto Dart (usado ao Ler dados)
  factory ProductsModels.fromMap(Map<String, dynamic> map) {
    return ProductsModels(
      id: map['id'],
      nome: map['nome'],
      preco: map['preco'],
      tamanho: map['tamanho'],
    );
  }
}
// click na imagem -> Janela com informações sobre o produto e um botão de add ao carrinho
// CREATE -> ADD COMPRA
// UPDATE -> LISTA DE COMPRAS
// REMOVE -> REMOVER PRODUTO DA LISTA

// https://docs.flutter.dev/cookbook/persistence/sqlite

// https://github.com/amritms/simple-note-flutter/blob/master/lib/mynote.dart
