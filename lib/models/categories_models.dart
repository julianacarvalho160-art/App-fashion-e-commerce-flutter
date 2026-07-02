// Create a name of table
final String tableCategories = 'categories';

// Create a field (campo) of the class attributes

class CategoriesFields {
  static final String id = '_id';
  static final String tipo = '_tipo';
}

class CategoriesModels {
  final int? id;
  final String tipo;

  CategoriesModels({required this.id, required this.tipo});

  // Converts the Dart object to a Map (used when saving/updating in the database).
  Map<String, dynamic> toMap() {
    return <String, dynamic>{"id": id, "tipo": tipo};
  }

  // Converts a Map from the database into a Dart object (used when reading data).
  factory CategoriesModels.fromMap(Map<String, dynamic> map) {
    return CategoriesModels(id: map['id'], tipo: map['tipo']);
  }
}

// click na categoria ->
// Mostra lista de opções por cor, tamanho,

//https://medium.com/@hemant.ramphul/complete-sqlite-crud-operations-in-flutter-6cbba8582c45*/

// This is better then what other
//https://medium.com/@juricavoda/building-a-crud-app-with-flutter-step-by-step-guide-1755982e504e

// https://medium.com/@skazhar525/mastering-local-data-storage-in-flutter-with-sqflite-full-crud-tutorial-9c79585d5420
