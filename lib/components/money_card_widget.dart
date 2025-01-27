import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'money_card_model.dart';
export 'money_card_model.dart';

class MoneyCardWidget extends StatefulWidget {
  const MoneyCardWidget({
    super.key,
    required this.displayName,
    required this.cardNumber,
    required this.balance,
    bool? showTopUp,
    this.topUpAction,
    String? expireDate,
    String? cvv,
  })  : this.showTopUp = showTopUp ?? false,
        this.expireDate = expireDate ?? '-- --',
        this.cvv = cvv ?? '---';

  final String? displayName;
  final String? cardNumber;
  final double? balance;
  final bool showTopUp;
  final Future Function()? topUpAction;
  final String expireDate;
  final String cvv;

  @override
  State<MoneyCardWidget> createState() => _MoneyCardWidgetState();
}

class _MoneyCardWidgetState extends State<MoneyCardWidget> {
  late MoneyCardModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => MoneyCardModel());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<List<CardsRecord>>(
      stream: queryCardsRecord(
        singleRecord: true,
      ),
      builder: (context, snapshot) {
        // Customize what your widget looks like when it's loading.
        if (!snapshot.hasData) {
          return Center(
            child: SizedBox(
              width: 44.0,
              height: 44.0,
              child: CircularProgressIndicator(
                valueColor: AlwaysStoppedAnimation<Color>(
                  FlutterFlowTheme.of(context).primary,
                ),
              ),
            ),
          );
        }
        List<CardsRecord> containerCardsRecordList = snapshot.data!;
        // Return an empty Container when the item does not exist.
        if (snapshot.data!.isEmpty) {
          return Container();
        }
        final containerCardsRecord = containerCardsRecordList.isNotEmpty
            ? containerCardsRecordList.first
            : null;

        return ClipRRect(
          borderRadius: BorderRadius.circular(8.0),
          child: Container(
            width: double.infinity,
            height: 200.0,
            decoration: BoxDecoration(
              color: FlutterFlowTheme.of(context).primaryText,
              borderRadius: BorderRadius.circular(8.0),
            ),
            child: Container(
              width: double.infinity,
              height: double.infinity,
              child: Stack(
                children: [
                  Padding(
                    padding: EdgeInsets.all(24.0),
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Column(
                              mainAxisSize: MainAxisSize.min,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Text(
                                      valueOrDefault<String>(
                                        containerCardsRecord?.displayName,
                                        '0',
                                      ),
                                      style: FlutterFlowTheme.of(context)
                                          .titleSmall
                                          .override(
                                            fontFamily: 'Inter',
                                            color: FlutterFlowTheme.of(context)
                                                .secondaryBackground,
                                            letterSpacing: 0.0,
                                          ),
                                    ),
                                  ],
                                ),
                                Row(
                                  mainAxisSize: MainAxisSize.max,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    if (!_model.showCardNumber)
                                      Text(
                                        FFLocalizations.of(context).getText(
                                          'gvgaw7l9' /* **** **** **** **** */,
                                        ),
                                        style: FlutterFlowTheme.of(context)
                                            .labelMedium
                                            .override(
                                              fontFamily: 'Inter',
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .secondaryBackground,
                                              letterSpacing: 0.0,
                                            ),
                                      ),
                                    if (_model.showCardNumber)
                                      Text(
                                        valueOrDefault<String>(
                                          containerCardsRecord?.cardNumber,
                                          '0',
                                        ),
                                        style: FlutterFlowTheme.of(context)
                                            .labelMedium
                                            .override(
                                              fontFamily: 'Inter',
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .secondaryBackground,
                                              letterSpacing: 0.0,
                                            ),
                                      ),
                                    InkWell(
                                      splashColor: Colors.transparent,
                                      focusColor: Colors.transparent,
                                      hoverColor: Colors.transparent,
                                      highlightColor: Colors.transparent,
                                      onTap: () async {
                                        _model.showCardNumber =
                                            !_model.showCardNumber;
                                        safeSetState(() {});
                                      },
                                      child: Container(
                                        width: 32.0,
                                        height: 32.0,
                                        child: Stack(
                                          alignment:
                                              AlignmentDirectional(0.0, 0.0),
                                          children: [
                                            if (!_model.showCardNumber)
                                              Icon(
                                                FFIcons.keye,
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .primaryBackground,
                                                size: 24.0,
                                              ),
                                            if (_model.showCardNumber)
                                              Icon(
                                                FFIcons.keyeClosed,
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .primaryBackground,
                                                size: 24.0,
                                              ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                Row(
                                  mainAxisSize: MainAxisSize.max,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Text(
                                      valueOrDefault<String>(
                                        containerCardsRecord?.expire,
                                        '0',
                                      ),
                                      style: FlutterFlowTheme.of(context)
                                          .labelMedium
                                          .override(
                                            fontFamily: 'Inter',
                                            color: FlutterFlowTheme.of(context)
                                                .pageViewDots,
                                            letterSpacing: 0.0,
                                          ),
                                    ),
                                    Text(
                                      valueOrDefault<String>(
                                        containerCardsRecord?.cvv,
                                        '0',
                                      ),
                                      style: FlutterFlowTheme.of(context)
                                          .labelMedium
                                          .override(
                                            fontFamily: 'Inter',
                                            color: FlutterFlowTheme.of(context)
                                                .pageViewDots,
                                            letterSpacing: 0.0,
                                          ),
                                    ),
                                  ].divide(SizedBox(width: 16.0)),
                                ),
                              ],
                            ),
                            Icon(
                              FFIcons.kcreditCard,
                              color:
                                  FlutterFlowTheme.of(context).grayTextMiddle,
                              size: 54.0,
                            ),
                          ],
                        ),
                        Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Flexible(
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Text(
                                        FFLocalizations.of(context).getText(
                                          'hqwtcgfn' /* Your balance */,
                                        ),
                                        style: FlutterFlowTheme.of(context)
                                            .labelMedium
                                            .override(
                                              fontFamily: 'Inter',
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .secondaryBackground,
                                              letterSpacing: 0.0,
                                            ),
                                      ),
                                    ],
                                  ),
                                  Row(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Flexible(
                                        child: AutoSizeText(
                                          formatNumber(
                                            widget!.balance,
                                            formatType: FormatType.decimal,
                                            decimalType: DecimalType.automatic,
                                            currency: '\$',
                                          ).maybeHandleOverflow(
                                            maxChars: 40,
                                          ),
                                          maxLines: 1,
                                          minFontSize: 14.0,
                                          style: FlutterFlowTheme.of(context)
                                              .displaySmall
                                              .override(
                                                fontFamily: 'Inter',
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .secondaryBackground,
                                                letterSpacing: 0.0,
                                              ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ].divide(SizedBox(height: 5.0)),
                              ),
                            ),
                            FFButtonWidget(
                              onPressed: () async {
                                await widget.topUpAction?.call();
                              },
                              text: FFLocalizations.of(context).getText(
                                '41nrmwbi' /* Top Up */,
                              ),
                              icon: Icon(
                                FFIcons.kbrandCashapp,
                                size: 22.0,
                              ),
                              options: FFButtonOptions(
                                height: 38.0,
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    20.0, 8.0, 20.0, 8.0),
                                iconPadding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 0.0, 0.0, 0.0),
                                color: FlutterFlowTheme.of(context)
                                    .secondaryBackground,
                                textStyle: FlutterFlowTheme.of(context)
                                    .titleSmall
                                    .override(
                                      fontFamily: 'Inter',
                                      color: FlutterFlowTheme.of(context)
                                          .primaryText,
                                      letterSpacing: 0.0,
                                    ),
                                elevation: 5.0,
                                borderSide: BorderSide(
                                  color:
                                      FlutterFlowTheme.of(context).primaryText,
                                  width: 2.0,
                                ),
                                borderRadius: BorderRadius.circular(100.0),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
