import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';

import '../model/model.dart';

class CartDatabaseHelper {
  static const String tableName = 'cart';

  late Database _database;

  Future<void> open() async {
    _database = await openDatabase(
      'cart_database.db',
      version: 1,
      onCreate: (db, version) {
        db.execute('''
          CREATE TABLE $tableName (
            productId INTEGER PRIMARY KEY,
            productName TEXT,
            productPrice REAL
          )
        ''');
      },
    );
  }

  Future<int> insertProduct(Products product) async {
    return await _database.insert(
      tableName,
      {
        'productId': product.productId,
        'productName': product.productName,
        'productPrice': product.productPrice,
      },
      conflictAlgorithm: ConflictAlgorithm.replace,
    );
  }

  Future<int> removeProduct(int productId) async {
    return await _database.delete(
      tableName,
      where: 'productId = ?',
      whereArgs: [productId],
    );
  }

  Future<List<Products>> getProducts() async {
    final List<Map<String, dynamic>> maps = await _database.query(tableName);

    return List.generate(maps.length, (index) {
      return Products(
        productId: maps[index]['productId'],
        productName: maps[index]['productName'],
        productPrice: maps[index]['productPrice'],
      );
    });
  }
}

