import '/backend/sqlite/sqlite_manager.dart';
import '/flutter_flow/flutter_flow_count_controller.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_blurhash/flutter_blurhash.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:octo_image/octo_image.dart';
import 'cart_componet_model.dart';
export 'cart_componet_model.dart';

class CartComponetWidget extends StatefulWidget {
  const CartComponetWidget({
    super.key,
    required this.parameter1,
    required this.parameter2,
    required this.parameter3,
    required this.parameter4,
    this.image,
    required this.itemid,
    required this.id,
  });

  final String? parameter1;
  final String? parameter2;
  final double? parameter3;
  final int? parameter4;
  final String? image;
  final int? itemid;
  final int? id;

  @override
  State<CartComponetWidget> createState() => _CartComponetWidgetState();
}

class _CartComponetWidgetState extends State<CartComponetWidget> {
  late CartComponetModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => CartComponetModel());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsetsDirectional.fromSTEB(12.0, 4.0, 14.0, 4.0),
      child: Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            flex: 3,
            child: Padding(
              padding: const EdgeInsetsDirectional.fromSTEB(0.0, 6.0, 0.0, 6.0),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(8.0),
                child: OctoImage(
                  placeholderBuilder: (_) => const SizedBox.expand(
                    child: Image(
                      image: BlurHashImage('LcS5-Lt7yYfRo~bGjFjFuPaeZ#kB'),
                      fit: BoxFit.cover,
                    ),
                  ),
                  image: NetworkImage(
                    widget.image!,
                  ),
                  width: 140.0,
                  height: 200.0,
                  fit: BoxFit.fill,
                ),
              ),
            ),
          ),
          Expanded(
            flex: 7,
            child: Padding(
              padding: const EdgeInsetsDirectional.fromSTEB(12.0, 0.0, 0.0, 0.0),
              child: Column(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(
                        flex: 6,
                        child: Text(
                          valueOrDefault<String>(
                            widget.parameter1,
                            '- - -',
                          ),
                          style:
                              FlutterFlowTheme.of(context).bodyMedium.override(
                                    fontFamily: 'Readex Pro',
                                    fontSize: 16.0,
                                    letterSpacing: 0.0,
                                    fontWeight: FontWeight.w600,
                                  ),
                        ),
                      ),
                    ],
                  ),
                  Text(
                    valueOrDefault<String>(
                      widget.parameter2,
                      '- - -',
                    ),
                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                          fontFamily: 'Readex Pro',
                          fontSize: 16.0,
                          letterSpacing: 0.0,
                          fontWeight: FontWeight.normal,
                        ),
                  ),
                  Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Text(
                            valueOrDefault<String>(
                              widget.parameter3?.toString(),
                              '00',
                            ),
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: 'Readex Pro',
                                  fontSize: 16.0,
                                  letterSpacing: 0.0,
                                ),
                          ),
                        ].addToEnd(const SizedBox(width: 20.0)),
                      ),
                      Expanded(
                        child: Align(
                          alignment: const AlignmentDirectional(-1.0, -1.0),
                          child: Container(
                            width: double.infinity,
                            decoration: const BoxDecoration(
                              borderRadius: BorderRadius.only(
                                bottomLeft: Radius.circular(0.0),
                                bottomRight: Radius.circular(0.0),
                                topLeft: Radius.circular(0.0),
                                topRight: Radius.circular(0.0),
                              ),
                            ),
                            child: Align(
                              alignment: const AlignmentDirectional(-1.0, -1.0),
                              child: Container(
                                height: 38.0,
                                decoration: BoxDecoration(
                                  color: FlutterFlowTheme.of(context)
                                      .secondaryBackground,
                                  borderRadius: BorderRadius.circular(8.0),
                                  shape: BoxShape.rectangle,
                                  border: Border.all(
                                    color: FlutterFlowTheme.of(context)
                                        .secondaryText,
                                  ),
                                ),
                                child: FlutterFlowCountController(
                                  decrementIconBuilder: (enabled) => FaIcon(
                                    FontAwesomeIcons.minus,
                                    color: enabled
                                        ? FlutterFlowTheme.of(context).primary
                                        : FlutterFlowTheme.of(context)
                                            .alternate,
                                    size: 24.0,
                                  ),
                                  incrementIconBuilder: (enabled) => FaIcon(
                                    FontAwesomeIcons.plus,
                                    color: enabled
                                        ? FlutterFlowTheme.of(context).primary
                                        : FlutterFlowTheme.of(context)
                                            .alternate,
                                    size: 24.0,
                                  ),
                                  countBuilder: (count) => Text(
                                    count.toString(),
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily: 'Readex Pro',
                                          color: FlutterFlowTheme.of(context)
                                              .primaryText,
                                          fontSize: 18.0,
                                          letterSpacing: 0.0,
                                        ),
                                  ),
                                  count: _model.countControllerValue ??=
                                      widget.parameter4!,
                                  updateCount: (count) async {
                                    setState(() =>
                                        _model.countControllerValue = count);
                                    await SQLiteManager.instance.updateqty(
                                      id: widget.id!,
                                      quantity: _model.countControllerValue!,
                                    );
                                    if (Navigator.of(context).canPop()) {
                                      context.pop();
                                    }
                                    context.pushNamed('cartPage');

                                    if (_model.countControllerValue == 0) {
                                      await SQLiteManager.instance.deleteCart(
                                        id: widget.id!,
                                      );
                                    }
                                  },
                                  stepSize: 1,
                                  minimum: 0,
                                  contentPadding:
                                      const EdgeInsetsDirectional.fromSTEB(
                                          12.0, 4.0, 12.0, 4.0),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ].divide(const SizedBox(width: 10.0)),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
