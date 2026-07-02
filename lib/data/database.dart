import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';
import 'package:app_fashion_e_commerce/models/products_models.dart';
import 'package:app_fashion_e_commerce/models/categories_models.dart';

// Hello! If you read this, you should know what the inspiration of this code, this is ythe place where I inspired,  check this link below: https://www.youtube.com/watch?v=UpKrhZ0Hppk

class EcommerceDatabase {
  //Step 2 - Create a global variable for instance a private constructor and calling it.
  static final EcommerceDatabase instance = EcommerceDatabase._init();

  // Step 3 - Create a new Variable for our database, it directly for a sqflite, we use the variable in next step
  static Database? _database;

  //Step 1 - Create a Private constructor.
  EcommerceDatabase._init();

  // Step 4 - Calling the variable database and open a connection a database and create a database.
  Future<Database> get database async {
    // Database created and inicialized! It exist now! Return the database!
    if (_database != null) return _database!;

    // else the database is not exist, we need to inicialize it!
    // For this, we call the method _initDB, where create a new file calling: 'ecommerce.db'
    _database = await _initDB(
      'ecommerce.db',
    ); //here is the local where our database is stored.
    return _database!;
  }

  // Step 5 - This method _initDB get the file path of ecommerce.db and executed:
  Future<Database> _initDB(String filePath) async {
    final dbPath =
        await getDatabasesPath(); //This is location where the database is stored in file storage system,
    final path = join(
      dbPath,
      filePath,
    ); //It get the file path and the ecommerce.db, create a new path object and the next step is the open of database.

    // Step 6 - Open the Database and calling the function _createDB
    return await openDatabase(path, version: 2, onCreate: _createDB);
  }

  //Step 7 - The method _createDB -> create a table of database, a table of the products class and categories class

  Future _createDB(Database db, int version) async {
    await db.execute('''CREATE TABLE tableProducts(
         id INTEGER PRIMARY KEY AUTOINCREMENT,
         nome STRING NOT NULL,
         preco DOUBLE NOT NULL
         tamanho STRING NOT NULL
       )''');

    await db.execute(('''CREATE TABLE tableCategories(
       id INTEGER PRIMARY KEY AUTOINCREMENT ,
      tipo STRING NOT NULL,
    )'''));
  }

  // Step 8  ->> Data operations in database
  Future<Database> get db async => await database;
  // Operations for the class Products

  //Create
  Future<int> insertProduct(ProductsModels products) async {
    final db = await instance.db;
    return await db.insert('tableProducts', products.toMap());
  }

  // Read
  Future<List<ProductsModels>> seeProducts() async {
    final db = await instance.db;
    final result = await db.query('tableProducts');
    return result.map((map) => ProductsModels.fromMap(map)).toList();
  }

  // Update
  Future<int> updateProducts(ProductsModels products) async {
    final db = await instance.db;
    return await db.update(
      'tableProducts',
      products.toMap(),
      where: 'id = ?',
      whereArgs: [products.id],
    );
  }

  // Delete
  Future<int> deleteProducts(int id) async {
    final db = await instance.db;
    return await db.delete('tableProducts', where: 'id = ?', whereArgs: [id]);
  }

  // Operations for the class Categories

  //Create
  Future<int> insertCategories(CategoriesModels categories) async {
    final db = await instance.db;
    return await db.insert('tableCategories', categories.toMap());
  }

  // Read
  Future<List<CategoriesModels>> seeCategories() async {
    final db = await instance.db;
    final results = await db.query('tableCategories');
    return results.map((map) => CategoriesModels.fromMap(map)).toList();
  }

  // Update
  Future<int> updateCategories(CategoriesModels categories) async {
    final db = await instance.db;
    return await db.update(
      'tableProducts',
      categories.toMap(),
      where: 'id = ?',
      whereArgs: [categories.id],
    );
  }

  // Delete
  Future<int> deleteCategories(int id) async {
    final db = await instance.db;
    return await db.delete('tableCategories', where: 'id = ?', whereArgs: [id]);
  }

  // Step 8 - Close to Database
  Future close() async {
    final db = await instance.database;
    db.close();
  }
}
