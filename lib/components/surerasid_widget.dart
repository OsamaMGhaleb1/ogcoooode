import '/auth/firebase_auth/auth_util.dart';
import '/backend/api_requests/api_calls.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'surerasid_model.dart';
export 'surerasid_model.dart';

class SurerasidWidget extends StatefulWidget {
  const SurerasidWidget({
    super.key,
    this.ac,
    this.sc,
    this.sno,
    this.sac,
    this.ofernamer,
    this.mt,
    this.numberref,
    this.amt,
    this.coast,
    this.image,
  });

  final int? ac;
  final int? sc;
  final String? sno;
  final String? sac;
  final String? ofernamer;
  final int? mt;
  final int? numberref;
  final double? amt;
  final double? coast;
  final String? image;

  @override
  State<SurerasidWidget> createState() => _SurerasidWidgetState();
}

class _SurerasidWidgetState extends State<SurerasidWidget> {
  late SurerasidModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => SurerasidModel());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(0.0),
          bottomRight: Radius.circular(0.0),
          topLeft: Radius.circular(10.0),
          topRight: Radius.circular(10.0),
        ),
        border: Border.all(
          color: Color(0xFF0869F6),
          width: 2.0,
        ),
      ),
      child: Padding(
        padding: EdgeInsetsDirectional.fromSTEB(16.0, 4.0, 16.0, 16.0),
        child: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: 60.0,
                    height: 4.0,
                    decoration: BoxDecoration(
                      color: FlutterFlowTheme.of(context).primaryBackground,
                      borderRadius: BorderRadius.circular(2.0),
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Align(
                    alignment: AlignmentDirectional(0.0, 0.0),
                    child: Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 12.0, 0.0, 0.0),
                      child: Text(
                        valueOrDefault<String>(
                          widget!.ofernamer,
                          '0',
                        ),
                        textAlign: TextAlign.center,
                        style:
                            FlutterFlowTheme.of(context).headlineSmall.override(
                                  fontFamily: 'Tajawal',
                                  color: Color(0xFFDCEFFF),
                                  letterSpacing: 0.0,
                                ),
                      ),
                    ),
                  ),
                ],
              ),
              Divider(
                height: 24.0,
                thickness: 2.0,
                color: FlutterFlowTheme.of(context).alternate,
              ),
              ListView(
                padding: EdgeInsets.zero,
                primary: false,
                shrinkWrap: true,
                scrollDirection: Axis.vertical,
                children: [
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 8.0),
                    child: Container(
                      width: double.infinity,
                      height: 60.0,
                      decoration: BoxDecoration(
                        color: FlutterFlowTheme.of(context).secondaryBackground,
                        borderRadius: BorderRadius.circular(8.0),
                        border: Border.all(
                          color: FlutterFlowTheme.of(context).alternate,
                          width: 2.0,
                        ),
                      ),
                      child: Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(
                            12.0, 8.0, 12.0, 8.0),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Text(
                              valueOrDefault<String>(
                                widget!.sno,
                                '0',
                              ),
                              style: FlutterFlowTheme.of(context)
                                  .bodyLarge
                                  .override(
                                    fontFamily: 'Inter',
                                    letterSpacing: 0.0,
                                  ),
                            ),
                            Text(
                              FFLocalizations.of(context).getText(
                                '4vfvlh00' /* رقم الهاتف */,
                              ),
                              style: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    fontFamily: 'Tajawal',
                                    fontSize: 16.0,
                                    letterSpacing: 0.0,
                                  ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 8.0),
                    child: Container(
                      width: double.infinity,
                      height: 60.0,
                      decoration: BoxDecoration(
                        color: FlutterFlowTheme.of(context).secondaryBackground,
                        borderRadius: BorderRadius.circular(8.0),
                        border: Border.all(
                          color: FlutterFlowTheme.of(context).alternate,
                          width: 2.0,
                        ),
                      ),
                      child: Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(
                            12.0, 8.0, 12.0, 8.0),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Text(
                              valueOrDefault<String>(
                                widget!.coast?.toString(),
                                '0',
                              ),
                              style: FlutterFlowTheme.of(context)
                                  .bodyLarge
                                  .override(
                                    fontFamily: 'Inter',
                                    letterSpacing: 0.0,
                                  ),
                            ),
                            Text(
                              FFLocalizations.of(context).getText(
                                'c4e4aoes' /* السعر */,
                              ),
                              style: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    fontFamily: 'Tajawal',
                                    fontSize: 16.0,
                                    letterSpacing: 0.0,
                                  ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(24.0, 4.0, 24.0, 24.0),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 0.0, 10.0, 0.0),
                              child: Text(
                                valueOrDefault<String>(
                                  widget!.coast?.toString(),
                                  '0',
                                ),
                                style: FlutterFlowTheme.of(context)
                                    .displaySmall
                                    .override(
                                      fontFamily: 'Inter',
                                      color: Color(0xFFE6F3FD),
                                      letterSpacing: 0.0,
                                    ),
                              ),
                            ),
                            FlutterFlowIconButton(
                              borderColor: Colors.transparent,
                              borderRadius: 30.0,
                              borderWidth: 1.0,
                              buttonSize: 36.0,
                              icon: Icon(
                                Icons.info_outlined,
                                color:
                                    FlutterFlowTheme.of(context).secondaryText,
                                size: 18.0,
                              ),
                              onPressed: () {
                                print('IconButton pressed ...');
                              },
                            ),
                            Text(
                              FFLocalizations.of(context).getText(
                                '5fczkcop' /* الإجمالي */,
                              ),
                              style: FlutterFlowTheme.of(context)
                                  .titleMedium
                                  .override(
                                    fontFamily: 'Tajawal',
                                    color: FlutterFlowTheme.of(context)
                                        .secondaryText,
                                    letterSpacing: 0.0,
                                  ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              if (widget!.sc == 42102)
                Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    if (widget!.ac == 7200)
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(
                            16.0, 10.0, 16.0, 24.0),
                        child: FFButtonWidget(
                          onPressed: () async {
                            if (valueOrDefault(
                                    currentUserDocument?.saldoye, 0.0) >=
                                functions.newCustomFunction5(
                                    widget!.coast?.toString())!) {
                              if (valueOrDefault(
                                      currentUserDocument?.saldoye, 0.0) >=
                                  functions.newCustomFunction5(
                                      widget!.coast?.toString())!) {
                                await PaymentMessageCall.call(
                                  ac: widget!.ac,
                                  sc: '42102',
                                  sno: widget!.sno,
                                  mt: widget!.mt,
                                  ref: widget!.numberref,
                                  sac: widget!.sac,
                                  rem: 'done',
                                  cost: widget!.coast,
                                  amt: widget!.amt?.toString(),
                                );

                                await currentUserReference!.update({
                                  ...mapToFirestore(
                                    {
                                      'SALDOYE': FieldValue.increment(
                                          -(widget!.coast!)),
                                    },
                                  ),
                                });

                                await ShahnraseedRecord.collection
                                    .doc()
                                    .set(createShahnraseedRecordData(
                                      creattime: getCurrentTimestamp,
                                      price: widget!.amt,
                                      network: 'يو',
                                      number: widget!.sno,
                                      numberref: widget!.numberref,
                                      cost: widget!.coast,
                                      email: currentUserEmail,
                                    ));

                                context.pushNamed(
                                  'DONERASEEED',
                                  queryParameters: {
                                    'sno': serializeParam(
                                      widget!.sno,
                                      ParamType.String,
                                    ),
                                    'numberref': serializeParam(
                                      widget!.numberref,
                                      ParamType.int,
                                    ),
                                    'cost': serializeParam(
                                      widget!.coast,
                                      ParamType.double,
                                    ),
                                  }.withoutNulls,
                                );
                              } else {
                                ScaffoldMessenger.of(context).showSnackBar(
                                  SnackBar(
                                    content: Text(
                                      'رصيدك غير كافي جرب محفظة الدولار',
                                      style: TextStyle(
                                        color: Colors.white,
                                      ),
                                    ),
                                    duration: Duration(milliseconds: 4000),
                                    backgroundColor: Color(0x85FF002C),
                                  ),
                                );
                              }
                            } else {
                              ScaffoldMessenger.of(context).showSnackBar(
                                SnackBar(
                                  content: Text(
                                    'رصيدك غير كافي ',
                                    style: TextStyle(
                                      color: Colors.white,
                                    ),
                                  ),
                                  duration: Duration(milliseconds: 4000),
                                  backgroundColor: Color(0x85FF002C),
                                ),
                              );
                            }
                          },
                          text: FFLocalizations.of(context).getText(
                            'wus9otk2' /* تأكيد */,
                          ),
                          options: FFButtonOptions(
                            width: double.infinity,
                            height: 50.0,
                            padding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 0.0, 0.0, 0.0),
                            iconPadding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 0.0, 0.0, 0.0),
                            color: Color(0xFF0668F8),
                            textStyle: FlutterFlowTheme.of(context)
                                .titleSmall
                                .override(
                                  fontFamily: 'Tajawal',
                                  color: Colors.white,
                                  letterSpacing: 0.0,
                                ),
                            elevation: 2.0,
                            borderSide: BorderSide(
                              color: Colors.transparent,
                              width: 1.0,
                            ),
                          ),
                        ),
                      ),
                    if (widget!.ac == 7100)
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(
                            16.0, 10.0, 16.0, 24.0),
                        child: FFButtonWidget(
                          onPressed: () async {
                            if (valueOrDefault(
                                    currentUserDocument?.saldoye, 0.0) >=
                                functions.newCustomFunction5(
                                    widget!.coast?.toString())!) {
                              if (valueOrDefault(
                                      currentUserDocument?.saldoye, 0.0) >=
                                  functions.newCustomFunction5(
                                      widget!.coast?.toString())!) {
                                await PaymentMessageCall.call(
                                  ac: widget!.ac,
                                  sc: '42102',
                                  sno: widget!.sno,
                                  mt: widget!.mt,
                                  ref: widget!.numberref,
                                  sac: '0',
                                  rem: 'done',
                                  cost: widget!.coast,
                                  amt: widget!.coast?.toString(),
                                );

                                await currentUserReference!.update({
                                  ...mapToFirestore(
                                    {
                                      'SALDOYE': FieldValue.increment(
                                          -(widget!.coast!)),
                                    },
                                  ),
                                });

                                await ShahnraseedRecord.collection
                                    .doc()
                                    .set(createShahnraseedRecordData(
                                      creattime: getCurrentTimestamp,
                                      price: widget!.amt,
                                      network: 'يو',
                                      number: widget!.sno,
                                      numberref: widget!.numberref,
                                      cost: widget!.coast,
                                      email: currentUserEmail,
                                    ));

                                context.pushNamed(
                                  'DONERASEEED',
                                  queryParameters: {
                                    'sno': serializeParam(
                                      widget!.sno,
                                      ParamType.String,
                                    ),
                                    'numberref': serializeParam(
                                      widget!.numberref,
                                      ParamType.int,
                                    ),
                                    'cost': serializeParam(
                                      widget!.coast,
                                      ParamType.double,
                                    ),
                                  }.withoutNulls,
                                );
                              } else {
                                ScaffoldMessenger.of(context).showSnackBar(
                                  SnackBar(
                                    content: Text(
                                      'رصيدك غير كافي جرب محفظة الدولار',
                                      style: TextStyle(
                                        color: Colors.white,
                                      ),
                                    ),
                                    duration: Duration(milliseconds: 4000),
                                    backgroundColor: Color(0x85FF002C),
                                  ),
                                );
                              }
                            } else {
                              ScaffoldMessenger.of(context).showSnackBar(
                                SnackBar(
                                  content: Text(
                                    'رصيدك غير كافي ',
                                    style: TextStyle(
                                      color: Colors.white,
                                    ),
                                  ),
                                  duration: Duration(milliseconds: 4000),
                                  backgroundColor: Color(0x85FF002C),
                                ),
                              );
                            }
                          },
                          text: FFLocalizations.of(context).getText(
                            'g5nw6mak' /* تأكيد */,
                          ),
                          options: FFButtonOptions(
                            width: double.infinity,
                            height: 50.0,
                            padding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 0.0, 0.0, 0.0),
                            iconPadding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 0.0, 0.0, 0.0),
                            color: Color(0xFF0668F8),
                            textStyle: FlutterFlowTheme.of(context)
                                .titleSmall
                                .override(
                                  fontFamily: 'Tajawal',
                                  color: Colors.white,
                                  letterSpacing: 0.0,
                                ),
                            elevation: 2.0,
                            borderSide: BorderSide(
                              color: Colors.transparent,
                              width: 1.0,
                            ),
                          ),
                        ),
                      ),
                  ],
                ),
              if (widget!.sc == 42104)
                Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    if (widget!.ac == 7200)
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(
                            16.0, 10.0, 16.0, 24.0),
                        child: FFButtonWidget(
                          onPressed: () async {
                            if (valueOrDefault(
                                    currentUserDocument?.saldoye, 0.0) >=
                                functions.newCustomFunction5(
                                    widget!.coast?.toString())!) {
                              if (valueOrDefault(
                                      currentUserDocument?.saldoye, 0.0) >=
                                  functions.newCustomFunction5(
                                      widget!.coast?.toString())!) {
                                await PaymentMessageCall.call(
                                  ac: widget!.ac,
                                  sc: '42104',
                                  sno: widget!.sno,
                                  mt: widget!.mt,
                                  ref: widget!.numberref,
                                  sac: widget!.sac,
                                  rem: 'done',
                                  cost: widget!.coast,
                                  amt: widget!.amt?.toString(),
                                );

                                await currentUserReference!.update({
                                  ...mapToFirestore(
                                    {
                                      'SALDOYE': FieldValue.increment(
                                          -(widget!.coast!)),
                                    },
                                  ),
                                });

                                await ShahnraseedRecord.collection
                                    .doc()
                                    .set(createShahnraseedRecordData(
                                      creattime: getCurrentTimestamp,
                                      price: widget!.amt,
                                      network: 'واي',
                                      number: widget!.sno,
                                      numberref: widget!.numberref,
                                      cost: widget!.coast,
                                      email: currentUserEmail,
                                    ));

                                context.pushNamed(
                                  'DONERASEEED',
                                  queryParameters: {
                                    'sno': serializeParam(
                                      widget!.sno,
                                      ParamType.String,
                                    ),
                                    'numberref': serializeParam(
                                      widget!.numberref,
                                      ParamType.int,
                                    ),
                                    'cost': serializeParam(
                                      widget!.coast,
                                      ParamType.double,
                                    ),
                                  }.withoutNulls,
                                );
                              } else {
                                ScaffoldMessenger.of(context).showSnackBar(
                                  SnackBar(
                                    content: Text(
                                      'رصيدك غير كافي جرب محفظة الدولار',
                                      style: TextStyle(
                                        color: Colors.white,
                                      ),
                                    ),
                                    duration: Duration(milliseconds: 4000),
                                    backgroundColor: Color(0x85FF002C),
                                  ),
                                );
                              }
                            } else {
                              ScaffoldMessenger.of(context).showSnackBar(
                                SnackBar(
                                  content: Text(
                                    'رصيدك غير كافي ',
                                    style: TextStyle(
                                      color: Colors.white,
                                    ),
                                  ),
                                  duration: Duration(milliseconds: 4000),
                                  backgroundColor: Color(0x85FF002C),
                                ),
                              );
                            }
                          },
                          text: FFLocalizations.of(context).getText(
                            'zoc23xem' /* تأكيد */,
                          ),
                          options: FFButtonOptions(
                            width: double.infinity,
                            height: 50.0,
                            padding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 0.0, 0.0, 0.0),
                            iconPadding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 0.0, 0.0, 0.0),
                            color: Color(0xFF0668F8),
                            textStyle: FlutterFlowTheme.of(context)
                                .titleSmall
                                .override(
                                  fontFamily: 'Tajawal',
                                  color: Colors.white,
                                  letterSpacing: 0.0,
                                ),
                            elevation: 2.0,
                            borderSide: BorderSide(
                              color: Colors.transparent,
                              width: 1.0,
                            ),
                          ),
                        ),
                      ),
                    if (widget!.ac == 7100)
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(
                            16.0, 10.0, 16.0, 24.0),
                        child: FFButtonWidget(
                          onPressed: () async {
                            if (valueOrDefault(
                                    currentUserDocument?.saldoye, 0.0) >=
                                functions.newCustomFunction5(
                                    widget!.coast?.toString())!) {
                              if (valueOrDefault(
                                      currentUserDocument?.saldoye, 0.0) >=
                                  functions.newCustomFunction5(
                                      widget!.coast?.toString())!) {
                                await PaymentMessageCall.call(
                                  ac: 7100,
                                  sc: '42104',
                                  sno: widget!.sno,
                                  mt: 1,
                                  ref: widget!.numberref,
                                  sac: widget!.sac,
                                  rem: 'true',
                                  cost: widget!.coast,
                                  amt: widget!.amt?.toString(),
                                );

                                await currentUserReference!.update({
                                  ...mapToFirestore(
                                    {
                                      'SALDOYE': FieldValue.increment(
                                          -(widget!.coast!)),
                                    },
                                  ),
                                });

                                await ShahnraseedRecord.collection
                                    .doc()
                                    .set(createShahnraseedRecordData(
                                      creattime: getCurrentTimestamp,
                                      price: widget!.amt,
                                      network: 'واي',
                                      number: widget!.sno,
                                      numberref: widget!.numberref,
                                      cost: widget!.coast,
                                      email: currentUserEmail,
                                    ));

                                context.pushNamed(
                                  'DONERASEEED',
                                  queryParameters: {
                                    'sno': serializeParam(
                                      widget!.sno,
                                      ParamType.String,
                                    ),
                                    'numberref': serializeParam(
                                      widget!.numberref,
                                      ParamType.int,
                                    ),
                                    'cost': serializeParam(
                                      widget!.coast,
                                      ParamType.double,
                                    ),
                                  }.withoutNulls,
                                );
                              } else {
                                ScaffoldMessenger.of(context).showSnackBar(
                                  SnackBar(
                                    content: Text(
                                      'رصيدك غير كافي',
                                      style: TextStyle(
                                        color: Colors.white,
                                      ),
                                    ),
                                    duration: Duration(milliseconds: 4000),
                                    backgroundColor: Color(0x85FF002C),
                                  ),
                                );
                              }
                            } else {
                              ScaffoldMessenger.of(context).showSnackBar(
                                SnackBar(
                                  content: Text(
                                    'رصيدك غير كافي ',
                                    style: TextStyle(
                                      color: Colors.white,
                                    ),
                                  ),
                                  duration: Duration(milliseconds: 4000),
                                  backgroundColor: Color(0x85FF002C),
                                ),
                              );
                            }
                          },
                          text: FFLocalizations.of(context).getText(
                            'yydk3jbs' /* تأكيد */,
                          ),
                          options: FFButtonOptions(
                            width: double.infinity,
                            height: 50.0,
                            padding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 0.0, 0.0, 0.0),
                            iconPadding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 0.0, 0.0, 0.0),
                            color: Color(0xFF0668F8),
                            textStyle: FlutterFlowTheme.of(context)
                                .titleSmall
                                .override(
                                  fontFamily: 'Tajawal',
                                  color: Colors.white,
                                  letterSpacing: 0.0,
                                ),
                            elevation: 2.0,
                            borderSide: BorderSide(
                              color: Colors.transparent,
                              width: 1.0,
                            ),
                          ),
                        ),
                      ),
                  ],
                ),
              if (widget!.sc == 42101)
                Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    if (widget!.ac == 7200)
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(
                            16.0, 10.0, 16.0, 24.0),
                        child: FFButtonWidget(
                          onPressed: () async {
                            if (valueOrDefault(
                                    currentUserDocument?.saldoye, 0.0) >=
                                functions.newCustomFunction5(
                                    widget!.coast?.toString())!) {
                              if (valueOrDefault(
                                      currentUserDocument?.saldoye, 0.0) >=
                                  functions.newCustomFunction5(
                                      widget!.coast?.toString())!) {
                                await PaymentMessageCall.call(
                                  ac: 7200,
                                  sc: '42101',
                                  sno: widget!.sno,
                                  mt: widget!.mt,
                                  ref: widget!.numberref,
                                  sac: widget!.sac,
                                  rem: 'done',
                                  cost: widget!.coast,
                                  amt: widget!.amt?.toString(),
                                );

                                await currentUserReference!.update({
                                  ...mapToFirestore(
                                    {
                                      'SALDOYE': FieldValue.increment(
                                          -(widget!.coast!)),
                                    },
                                  ),
                                });

                                await ShahnraseedRecord.collection
                                    .doc()
                                    .set(createShahnraseedRecordData(
                                      creattime: getCurrentTimestamp,
                                      price: widget!.amt,
                                      network: 'سبأفون',
                                      number: widget!.sno,
                                      numberref: widget!.numberref,
                                      cost: widget!.coast,
                                      email: currentUserEmail,
                                    ));

                                context.pushNamed(
                                  'DONERASEEED',
                                  queryParameters: {
                                    'sno': serializeParam(
                                      widget!.sno,
                                      ParamType.String,
                                    ),
                                    'numberref': serializeParam(
                                      widget!.numberref,
                                      ParamType.int,
                                    ),
                                    'cost': serializeParam(
                                      widget!.coast,
                                      ParamType.double,
                                    ),
                                  }.withoutNulls,
                                );
                              } else {
                                ScaffoldMessenger.of(context).showSnackBar(
                                  SnackBar(
                                    content: Text(
                                      'رصيدك غير كافي ',
                                      style: TextStyle(
                                        color: Colors.white,
                                      ),
                                    ),
                                    duration: Duration(milliseconds: 4000),
                                    backgroundColor: Color(0x85FF002C),
                                  ),
                                );
                              }
                            } else {
                              ScaffoldMessenger.of(context).showSnackBar(
                                SnackBar(
                                  content: Text(
                                    'رصيدك غير كافي ',
                                    style: TextStyle(
                                      color: Colors.white,
                                    ),
                                  ),
                                  duration: Duration(milliseconds: 4000),
                                  backgroundColor: Color(0x85FF002C),
                                ),
                              );
                            }
                          },
                          text: FFLocalizations.of(context).getText(
                            'v64l0m7o' /* تأكيد */,
                          ),
                          options: FFButtonOptions(
                            width: double.infinity,
                            height: 50.0,
                            padding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 0.0, 0.0, 0.0),
                            iconPadding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 0.0, 0.0, 0.0),
                            color: Color(0xFF0668F8),
                            textStyle: FlutterFlowTheme.of(context)
                                .titleSmall
                                .override(
                                  fontFamily: 'Tajawal',
                                  color: Colors.white,
                                  letterSpacing: 0.0,
                                ),
                            elevation: 2.0,
                            borderSide: BorderSide(
                              color: Colors.transparent,
                              width: 1.0,
                            ),
                          ),
                        ),
                      ),
                    if (widget!.ac == 7100)
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(
                            16.0, 10.0, 16.0, 24.0),
                        child: FFButtonWidget(
                          onPressed: () async {
                            if (valueOrDefault(
                                    currentUserDocument?.saldoye, 0.0) >=
                                functions.newCustomFunction5(
                                    widget!.coast?.toString())!) {
                              if (valueOrDefault(
                                      currentUserDocument?.saldoye, 0.0) >=
                                  functions.newCustomFunction5(
                                      widget!.coast?.toString())!) {
                                await PaymentMessageCall.call(
                                  ac: 7100,
                                  sc: '42101',
                                  sno: widget!.sno,
                                  mt: 1,
                                  ref: widget!.numberref,
                                  sac: widget!.sac,
                                  rem: 'done',
                                  cost: widget!.coast,
                                  amt: widget!.amt?.toString(),
                                );

                                await currentUserReference!.update({
                                  ...mapToFirestore(
                                    {
                                      'SALDOYE': FieldValue.increment(
                                          -(widget!.coast!)),
                                    },
                                  ),
                                });

                                await ShahnraseedRecord.collection
                                    .doc()
                                    .set(createShahnraseedRecordData(
                                      creattime: getCurrentTimestamp,
                                      price: widget!.amt,
                                      network: 'سبأفون',
                                      number: widget!.sno,
                                      numberref: widget!.numberref,
                                      cost: widget!.coast,
                                      email: currentUserEmail,
                                    ));

                                context.pushNamed(
                                  'DONERASEEED',
                                  queryParameters: {
                                    'sno': serializeParam(
                                      widget!.sno,
                                      ParamType.String,
                                    ),
                                    'numberref': serializeParam(
                                      widget!.numberref,
                                      ParamType.int,
                                    ),
                                    'cost': serializeParam(
                                      widget!.coast,
                                      ParamType.double,
                                    ),
                                  }.withoutNulls,
                                );
                              } else {
                                ScaffoldMessenger.of(context).showSnackBar(
                                  SnackBar(
                                    content: Text(
                                      'رصيدك غير كافي',
                                      style: TextStyle(
                                        color: Colors.white,
                                      ),
                                    ),
                                    duration: Duration(milliseconds: 4000),
                                    backgroundColor: Color(0x85FF002C),
                                  ),
                                );
                              }
                            } else {
                              ScaffoldMessenger.of(context).showSnackBar(
                                SnackBar(
                                  content: Text(
                                    'رصيدك غير كافي ',
                                    style: TextStyle(
                                      color: Colors.white,
                                    ),
                                  ),
                                  duration: Duration(milliseconds: 4000),
                                  backgroundColor: Color(0x85FF002C),
                                ),
                              );
                            }
                          },
                          text: FFLocalizations.of(context).getText(
                            'riorkico' /* تأكيد */,
                          ),
                          options: FFButtonOptions(
                            width: double.infinity,
                            height: 50.0,
                            padding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 0.0, 0.0, 0.0),
                            iconPadding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 0.0, 0.0, 0.0),
                            color: Color(0xFF0668F8),
                            textStyle: FlutterFlowTheme.of(context)
                                .titleSmall
                                .override(
                                  fontFamily: 'Tajawal',
                                  color: Colors.white,
                                  letterSpacing: 0.0,
                                ),
                            elevation: 2.0,
                            borderSide: BorderSide(
                              color: Colors.transparent,
                              width: 1.0,
                            ),
                          ),
                        ),
                      ),
                    if (widget!.sac == '0')
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(
                            16.0, 10.0, 16.0, 24.0),
                        child: FFButtonWidget(
                          onPressed: () async {
                            if (valueOrDefault(
                                    currentUserDocument?.saldoye, 0.0) >=
                                functions.newCustomFunction5(
                                    widget!.coast?.toString())!) {
                              if (valueOrDefault(
                                      currentUserDocument?.saldoye, 0.0) >=
                                  functions.newCustomFunction5(
                                      widget!.coast?.toString())!) {
                                await PaymentMessageCall.call(
                                  ac: 7100,
                                  sc: '42101',
                                  sno: widget!.sno,
                                  mt: 1,
                                  ref: widget!.numberref,
                                  sac: '0',
                                  rem: 'done',
                                  cost: widget!.amt,
                                  amt: widget!.amt?.toString(),
                                );

                                await currentUserReference!.update({
                                  ...mapToFirestore(
                                    {
                                      'SALDOYE': FieldValue.increment(
                                          -(widget!.coast!)),
                                    },
                                  ),
                                });

                                await ShahnraseedRecord.collection
                                    .doc()
                                    .set(createShahnraseedRecordData(
                                      creattime: getCurrentTimestamp,
                                      price: widget!.amt,
                                      network: 'سبأفون',
                                      number: widget!.sno,
                                      numberref: widget!.numberref,
                                      cost: widget!.amt,
                                      email: currentUserEmail,
                                    ));

                                context.pushNamed(
                                  'DONERASEEED',
                                  queryParameters: {
                                    'sno': serializeParam(
                                      widget!.sno,
                                      ParamType.String,
                                    ),
                                    'numberref': serializeParam(
                                      widget!.numberref,
                                      ParamType.int,
                                    ),
                                    'cost': serializeParam(
                                      widget!.coast,
                                      ParamType.double,
                                    ),
                                  }.withoutNulls,
                                );
                              } else {
                                ScaffoldMessenger.of(context).showSnackBar(
                                  SnackBar(
                                    content: Text(
                                      'رصيدك غير كافي',
                                      style: TextStyle(
                                        color: Colors.white,
                                      ),
                                    ),
                                    duration: Duration(milliseconds: 4000),
                                    backgroundColor: Color(0x85FF002C),
                                  ),
                                );
                              }
                            } else {
                              ScaffoldMessenger.of(context).showSnackBar(
                                SnackBar(
                                  content: Text(
                                    'رصيدك غير كافي ',
                                    style: TextStyle(
                                      color: Colors.white,
                                    ),
                                  ),
                                  duration: Duration(milliseconds: 4000),
                                  backgroundColor: Color(0x85FF002C),
                                ),
                              );
                            }
                          },
                          text: FFLocalizations.of(context).getText(
                            'in01727u' /* تأكيد */,
                          ),
                          options: FFButtonOptions(
                            width: double.infinity,
                            height: 50.0,
                            padding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 0.0, 0.0, 0.0),
                            iconPadding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 0.0, 0.0, 0.0),
                            color: Color(0xFF0668F8),
                            textStyle: FlutterFlowTheme.of(context)
                                .titleSmall
                                .override(
                                  fontFamily: 'Tajawal',
                                  color: Colors.white,
                                  letterSpacing: 0.0,
                                ),
                            elevation: 2.0,
                            borderSide: BorderSide(
                              color: Colors.transparent,
                              width: 1.0,
                            ),
                          ),
                        ),
                      ),
                  ],
                ),
            ],
          ),
        ),
      ),
    );
  }
}
