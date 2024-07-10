import 'package:flutter/foundation.dart';

import '/backend/sqlite/init.dart';
import 'queries/read.dart';
import 'queries/update.dart';

import 'package:sqflite/sqflite.dart';
export 'queries/read.dart';
export 'queries/update.dart';

class SQLiteManager {
  SQLiteManager._();

  static SQLiteManager? _instance;
  static SQLiteManager get instance => _instance ??= SQLiteManager._();

  static late Database _database;
  Database get database => _database;

  static Future initialize() async {
    if (kIsWeb) {
      return;
    }
    _database = await initializeDatabaseFromDbFile(
      'cart_product',
      'cart_Kmart.db',
    );
  }

  /// START READ QUERY CALLS

  Future<List<AllgetRow>> allget() => performAllget(
        _database,
      );

  Future<List<GetTotalpriceRow>> getTotalprice() => performGetTotalprice(
        _database,
      );

  Future<List<CountitemsRow>> countitems() => performCountitems(
        _database,
      );

  /// END READ QUERY CALLS

  /// START UPDATE QUERY CALLS

  Future addCart({
    int? itemid,
    String? productname,
    String? weight,
    double? price,
    int? quantity,
    String? image,
  }) =>
      performAddCart(
        _database,
        itemid: itemid,
        productname: productname,
        weight: weight,
        price: price,
        quantity: quantity,
        image: image,
      );

  Future deleteCart({
    int? id,
  }) =>
      performDeleteCart(
        _database,
        id: id,
      );

  Future updateqty({
    int? id,
    int? quantity,
  }) =>
      performUpdateqty(
        _database,
        id: id,
        quantity: quantity,
      );

  Future totalprice({
    double? totalprice,
  }) =>
      performTotalprice(
        _database,
        totalprice: totalprice,
      );

  /// END UPDATE QUERY CALLS
}
