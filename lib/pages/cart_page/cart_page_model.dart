import '/backend/sqlite/sqlite_manager.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'cart_page_widget.dart' show CartPageWidget;
import 'package:flutter/material.dart';

class CartPageModel extends FlutterFlowModel<CartPageWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Stores action output result for [Backend Call - SQLite (getTotalprice)] action in Button widget.
  List<GetTotalpriceRow>? getTotalprice;
  // Stores action output result for [Custom Action - checkCartTotalAmountnull] action in Button widget.
  bool? actionresult;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
