import '/backend/api_requests/api_calls.dart';
import '/components/navbar_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'product_page_widget.dart' show ProductPageWidget;
import 'package:flutter/material.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';

class ProductPageModel extends FlutterFlowModel<ProductPageWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for StaggeredView widget.

  PagingController<ApiPagingParams, dynamic>? staggeredViewPagingController;
  Function(ApiPagingParams nextPageMarker)? staggeredViewApiCall;

  // Model for navbar component.
  late NavbarModel navbarModel;

  @override
  void initState(BuildContext context) {
    navbarModel = createModel(context, () => NavbarModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    staggeredViewPagingController?.dispose();
    navbarModel.dispose();
  }

  /// Additional helper methods.
  PagingController<ApiPagingParams, dynamic> setStaggeredViewController(
    Function(ApiPagingParams) apiCall,
  ) {
    staggeredViewApiCall = apiCall;
    return staggeredViewPagingController ??=
        _createStaggeredViewController(apiCall);
  }

  PagingController<ApiPagingParams, dynamic> _createStaggeredViewController(
    Function(ApiPagingParams) query,
  ) {
    final controller = PagingController<ApiPagingParams, dynamic>(
      firstPageKey: ApiPagingParams(
        nextPageNumber: 0,
        numItems: 0,
        lastResponse: null,
      ),
    );
    return controller..addPageRequestListener(staggeredViewGetProductsPage);
  }

  void staggeredViewGetProductsPage(ApiPagingParams nextPageMarker) =>
      staggeredViewApiCall!(nextPageMarker)
          .then((staggeredViewGetProductsResponse) {
        final pageItems = (AppApisGroup.getProductsCall.products(
                  staggeredViewGetProductsResponse.jsonBody,
                )! ??
                [])
            .toList();
        final newNumItems = nextPageMarker.numItems + pageItems.length;
        staggeredViewPagingController?.appendPage(
          pageItems,
          (pageItems.isNotEmpty)
              ? ApiPagingParams(
                  nextPageNumber: nextPageMarker.nextPageNumber + 1,
                  numItems: newNumItems,
                  lastResponse: staggeredViewGetProductsResponse,
                )
              : null,
        );
      });
}
