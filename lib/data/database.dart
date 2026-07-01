import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';
import 'dart:io' as io;

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
    return await openDatabase(path, version: 1, onCreate: _createDB);
  }

//Step 7 - The method _createDB

Future _createDB (Database db, int version) async{
     
}



}
