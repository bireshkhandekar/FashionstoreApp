import 'package:sqflite/sqflite.dart';

/// BEGIN ADDCART
Future performAddCart(
  Database database, {
  int? itemid,
  String? productname,
  String? weight,
  double? price,
  int? quantity,
  String? image,
}) {
  final query = '''
INSERT into cart_add (itemid,product_name,weight,price,quantity,image) VALUES ($itemid,'$productname','$weight',$price,$quantity,'$image')
''';
  return database.rawQuery(query);
}

/// END ADDCART

/// BEGIN DELETECART
Future performDeleteCart(
  Database database, {
  int? id,
}) {
  final query = '''
DELETE FROM cart_add WHERE id = $id
''';
  return database.rawQuery(query);
}

/// END DELETECART

/// BEGIN UPDATEQTY
Future performUpdateqty(
  Database database, {
  int? id,
  int? quantity,
}) {
  final query = '''
UPDATE cart_add
SET 
    quantity = '$quantity'
    WHERE id = $id;
''';
  return database.rawQuery(query);
}

/// END UPDATEQTY

/// BEGIN TOTALPRICE
Future performTotalprice(
  Database database, {
  double? totalprice,
}) {
  const query = '''
SELECT SUM(quantity * price) AS totalprice FROM cart_add;
''';
  return database.rawQuery(query);
}

/// END TOTALPRICE
