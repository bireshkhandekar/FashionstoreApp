import '/backend/sqlite/queries/sqlite_row.dart';
import 'package:sqflite/sqflite.dart';

Future<List<T>> _readQuery<T>(
  Database database,
  String query,
  T Function(Map<String, dynamic>) create,
) =>
    database.rawQuery(query).then((r) => r.map((e) => create(e)).toList());

/// BEGIN ALLGET
Future<List<AllgetRow>> performAllget(
  Database database,
) {
  const query = '''
select * from cart_add
''';
  return _readQuery(database, query, (d) => AllgetRow(d));
}

class AllgetRow extends SqliteRow {
  AllgetRow(super.data);

  int get itemid => data['itemid'] as int;
  String get productName => data['product_name'] as String;
  String get weight => data['weight'] as String;
  double get price => data['price'] as double;
  int get quantity => data['quantity'] as int;
  String get image => data['image'] as String;
  int get id => data['id'] as int;
}

/// END ALLGET

/// BEGIN GETTOTALPRICE
Future<List<GetTotalpriceRow>> performGetTotalprice(
  Database database,
) {
  const query = '''
SELECT SUM(quantity * price) AS total_price FROM cart_add;
''';
  return _readQuery(database, query, (d) => GetTotalpriceRow(d));
}

class GetTotalpriceRow extends SqliteRow {
  GetTotalpriceRow(super.data);

  double? get totalPrice => data['total_price'] as double?;
}

/// END GETTOTALPRICE

/// BEGIN COUNTITEMS
Future<List<CountitemsRow>> performCountitems(
  Database database,
) {
  const query = '''
SELECT COUNT(*) AS row_count FROM cart_add;
''';
  return _readQuery(database, query, (d) => CountitemsRow(d));
}

class CountitemsRow extends SqliteRow {
  CountitemsRow(super.data);

  int get rowCount => data['row_count'] as int;
}

/// END COUNTITEMS
