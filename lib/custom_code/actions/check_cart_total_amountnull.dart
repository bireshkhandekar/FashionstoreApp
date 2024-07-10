// Automatic FlutterFlow imports
import '/backend/sqlite/sqlite_manager.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

Future<bool?> checkCartTotalAmountnull(
  BuildContext context,
  String? totalAmount,
) async {
  // Add your function code here!
  if (totalAmount == null || double.parse(totalAmount) <= 0) {
    return false;
  } else {
    return true;
  }
}
