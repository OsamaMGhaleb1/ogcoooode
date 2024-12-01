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
import 'surerasid1_model.dart';
export 'surerasid1_model.dart';

class Surerasid1Widget extends StatefulWidget {
  const Surerasid1Widget({
    super.key,
    this.number,
    this.ofername,
    this.oferid,
    this.price,
    this.numofer,
    this.ac,
    this.cost,
    this.sc,
    this.area,
  });

  final String? number;
  final String? ofername;
  final double? oferid;
  final double? price;
  final int? numofer;
  final int? ac;
  final double? cost;
  final int? sc;
  final String? area;

  @override
  State<Surerasid1Widget> createState() => _Surerasid1WidgetState();
}

class _Surerasid1WidgetState extends State<Surerasid1Widget> {
  late Surerasid1Model _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => Surerasid1Model());

    _model.textController ??= TextEditingController(text: widget!.number);
    _model.textFieldFocusNode ??= FocusNode();
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: AlignmentDirectional(0.0, 0.0),
      child: Padding(
        padding: EdgeInsetsDirectional.fromSTEB(0.0, 44.0, 0.0, 0.0),
        child: Container(
          width: double.infinity,
          decoration: BoxDecoration(
            color: FlutterFlowTheme.of(context).secondaryBackground,
            boxShadow: [
              BoxShadow(
                blurRadius: 4.0,
                color: Color(0x25090F13),
                offset: Offset(
                  0.0,
                  2.0,
                ),
              )
            ],
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(0.0),
              bottomRight: Radius.circular(0.0),
              topLeft: Radius.circular(12.0),
              topRight: Radius.circular(12.0),
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
                  Align(
                    alignment: AlignmentDirectional(0.0, 0.0),
                    child: Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 12.0, 0.0, 0.0),
                      child: Text(
                        valueOrDefault<String>(
                          widget!.ofername,
                          '0',
                        ),
                        textAlign: TextAlign.center,
                        style:
                            FlutterFlowTheme.of(context).headlineSmall.override(
                                  fontFamily: 'Tajawal',
                                  fontSize: 20.0,
                                  letterSpacing: 0.0,
                                ),
                      ),
                    ),
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
                        padding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 8.0),
                        child: Container(
                          width: double.infinity,
                          height: 60.0,
                          decoration: BoxDecoration(
                            color: FlutterFlowTheme.of(context)
                                .secondaryBackground,
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
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      10.0, 0.0, 10.0, 0.0),
                                  child: Text(
                                    valueOrDefault<String>(
                                      widget!.number,
                                      '0',
                                    ),
                                    textAlign: TextAlign.center,
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily: 'Inter',
                                          fontSize: 25.0,
                                          letterSpacing: 0.0,
                                        ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      Container(
                        width: 200.0,
                        child: TextFormField(
                          controller: _model.textController,
                          focusNode: _model.textFieldFocusNode,
                          autofocus: false,
                          obscureText: false,
                          decoration: InputDecoration(
                            isDense: true,
                            labelStyle: FlutterFlowTheme.of(context)
                                .labelMedium
                                .override(
                                  fontFamily: 'Inter',
                                  letterSpacing: 0.0,
                                ),
                            hintText: FFLocalizations.of(context).getText(
                              'ti0e5ahf' /* TextField */,
                            ),
                            hintStyle: FlutterFlowTheme.of(context)
                                .labelMedium
                                .override(
                                  fontFamily: 'Inter',
                                  letterSpacing: 0.0,
                                ),
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Color(0x00000000),
                                width: 1.0,
                              ),
                              borderRadius: BorderRadius.circular(8.0),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Color(0x00000000),
                                width: 1.0,
                              ),
                              borderRadius: BorderRadius.circular(8.0),
                            ),
                            errorBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: FlutterFlowTheme.of(context).error,
                                width: 1.0,
                              ),
                              borderRadius: BorderRadius.circular(8.0),
                            ),
                            focusedErrorBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: FlutterFlowTheme.of(context).error,
                                width: 1.0,
                              ),
                              borderRadius: BorderRadius.circular(8.0),
                            ),
                            filled: true,
                            fillColor: FlutterFlowTheme.of(context)
                                .secondaryBackground,
                          ),
                          style:
                              FlutterFlowTheme.of(context).bodyMedium.override(
                                    fontFamily: 'Inter',
                                    letterSpacing: 0.0,
                                  ),
                          cursorColor: FlutterFlowTheme.of(context).primaryText,
                          validator: _model.textControllerValidator
                              .asValidator(context),
                        ),
                      ),
                    ],
                  ),
                  SingleChildScrollView(
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              24.0, 4.0, 24.0, 24.0),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0.0, 0.0, 10.0, 0.0),
                                    child: Text(
                                      valueOrDefault<String>(
                                        widget!.cost?.toString(),
                                        '0',
                                      ),
                                      style: FlutterFlowTheme.of(context)
                                          .displaySmall
                                          .override(
                                            fontFamily: 'Inter',
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
                                      color: FlutterFlowTheme.of(context)
                                          .secondaryText,
                                      size: 18.0,
                                    ),
                                    onPressed: () {
                                      print('IconButton pressed ...');
                                    },
                                  ),
                                  Text(
                                    FFLocalizations.of(context).getText(
                                      'uny4ow5i' /* المبلغ */,
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
                        if (widget!.sc == 42113)
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                16.0, 0.0, 16.0, 24.0),
                            child: FFButtonWidget(
                              onPressed: () async {
                                if (valueOrDefault(
                                        currentUserDocument?.saldoye, 0.0) >=
                                    functions.newCustomFunction5(
                                        widget!.cost?.toString())!) {
                                  if (valueOrDefault(
                                          currentUserDocument?.saldoye, 0.0) >=
                                      functions.newCustomFunction5(
                                          widget!.cost?.toString())!) {
                                    await PaymentMessageCall.call(
                                      ac: 7100,
                                      sc: widget!.sc?.toString(),
                                      sno: widget!.number,
                                      mt: 1,
                                      ref: widget!.numofer,
                                      sac: widget!.oferid?.toString(),
                                      rem: 'done',
                                      cost: widget!.cost,
                                      amt: widget!.price?.toString(),
                                    );

                                    await currentUserReference!.update({
                                      ...mapToFirestore(
                                        {
                                          'SALDOYE': FieldValue.increment(
                                              -(widget!.cost!)),
                                        },
                                      ),
                                    });

                                    await ShahnraseedRecord.collection
                                        .doc()
                                        .set(createShahnraseedRecordData(
                                          creattime: getCurrentTimestamp,
                                          price: widget!.price,
                                          network: 'يمن فورجي',
                                          number: widget!.number,
                                          numberref: widget!.numofer,
                                          cost: widget!.cost,
                                          email: currentUserEmail,
                                        ));

                                    context.pushNamed(
                                      'DONERASEEED',
                                      queryParameters: {
                                        'sno': serializeParam(
                                          widget!.number,
                                          ParamType.String,
                                        ),
                                        'numberref': serializeParam(
                                          widget!.numofer,
                                          ParamType.int,
                                        ),
                                        'cost': serializeParam(
                                          widget!.cost,
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
                                'nubet6co' /* تأكيد */,
                              ),
                              options: FFButtonOptions(
                                width: double.infinity,
                                height: 50.0,
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 0.0, 0.0, 0.0),
                                iconPadding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 0.0, 0.0, 0.0),
                                color: Color(0xFF019A88),
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
                        if (widget!.sc == 42105)
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                16.0, 0.0, 16.0, 24.0),
                            child: FFButtonWidget(
                              onPressed: () async {
                                if (valueOrDefault(
                                        currentUserDocument?.saldoye, 0.0) >=
                                    functions.newCustomFunction5(
                                        widget!.cost?.toString())!) {
                                  if (valueOrDefault(
                                          currentUserDocument?.saldoye, 0.0) >=
                                      functions.newCustomFunction5(
                                          widget!.cost?.toString())!) {
                                    await PaymentMessageCall.call(
                                      ac: widget!.ac,
                                      sc: '42105',
                                      sno: widget!.number,
                                      mt: 1,
                                      ref: widget!.numofer,
                                      sac: widget!.oferid?.toString(),
                                      rem: 'done',
                                      cost: widget!.cost,
                                      amt: widget!.price?.toString(),
                                    );

                                    await currentUserReference!.update({
                                      ...mapToFirestore(
                                        {
                                          'SALDOYE': FieldValue.increment(
                                              -(widget!.cost!)),
                                        },
                                      ),
                                    });

                                    await ShahnraseedRecord.collection
                                        .doc()
                                        .set(createShahnraseedRecordData(
                                          creattime: getCurrentTimestamp,
                                          price: widget!.price,
                                          network: 'الإنترنت  المنزلي',
                                          number: widget!.number,
                                          numberref: widget!.numofer,
                                          cost: widget!.cost,
                                          email: currentUserEmail,
                                        ));

                                    context.pushNamed(
                                      'DONERASEEED',
                                      queryParameters: {
                                        'sno': serializeParam(
                                          widget!.number,
                                          ParamType.String,
                                        ),
                                        'numberref': serializeParam(
                                          widget!.numofer,
                                          ParamType.int,
                                        ),
                                        'cost': serializeParam(
                                          widget!.cost,
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
                                'vlag8k3g' /* تأكيد */,
                              ),
                              options: FFButtonOptions(
                                width: double.infinity,
                                height: 50.0,
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 0.0, 0.0, 0.0),
                                iconPadding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 0.0, 0.0, 0.0),
                                color: Color(0xFF019A88),
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
                        if (widget!.sc == 42106)
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                16.0, 0.0, 16.0, 24.0),
                            child: FFButtonWidget(
                              onPressed: () async {
                                if (valueOrDefault(
                                        currentUserDocument?.saldoye, 0.0) >=
                                    functions.newCustomFunction5(
                                        widget!.cost?.toString())!) {
                                  if (valueOrDefault(
                                          currentUserDocument?.saldoye, 0.0) >=
                                      functions.newCustomFunction5(
                                          widget!.cost?.toString())!) {
                                    await PaymentMessageCall.call(
                                      ac: widget!.ac,
                                      sc: widget!.sc?.toString(),
                                      sno: widget!.number,
                                      mt: 1,
                                      ref: widget!.numofer,
                                      sac: widget!.oferid?.toString(),
                                      rem: 'done',
                                      cost: widget!.cost,
                                      amt: widget!.price?.toString(),
                                    );

                                    await currentUserReference!.update({
                                      ...mapToFirestore(
                                        {
                                          'SALDOYE': FieldValue.increment(
                                              -(widget!.cost!)),
                                        },
                                      ),
                                    });

                                    await ShahnraseedRecord.collection
                                        .doc()
                                        .set(createShahnraseedRecordData(
                                          creattime: getCurrentTimestamp,
                                          price: widget!.price,
                                          network: 'الهاتف الارضي',
                                          number: widget!.number,
                                          numberref: widget!.numofer,
                                          cost: widget!.cost,
                                          email: currentUserEmail,
                                        ));

                                    context.pushNamed(
                                      'DONERASEEED',
                                      queryParameters: {
                                        'sno': serializeParam(
                                          widget!.number,
                                          ParamType.String,
                                        ),
                                        'numberref': serializeParam(
                                          widget!.numofer,
                                          ParamType.int,
                                        ),
                                        'cost': serializeParam(
                                          widget!.cost,
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
                                'y6ebu66z' /* تأكيد */,
                              ),
                              options: FFButtonOptions(
                                width: double.infinity,
                                height: 50.0,
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 0.0, 0.0, 0.0),
                                iconPadding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 0.0, 0.0, 0.0),
                                color: Color(0xFF019A88),
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
                        if (widget!.sc == 42108)
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                16.0, 0.0, 16.0, 24.0),
                            child: FFButtonWidget(
                              onPressed: () async {
                                if (valueOrDefault(
                                        currentUserDocument?.saldoye, 0.0) >=
                                    functions.newCustomFunction5(
                                        widget!.cost?.toString())!) {
                                  if (valueOrDefault(
                                          currentUserDocument?.saldoye, 0.0) >=
                                      functions.newCustomFunction5(
                                          widget!.cost?.toString())!) {
                                    await PaymentMessageCall.call(
                                      ac: widget!.ac,
                                      sc: widget!.sc?.toString(),
                                      sno: widget!.number,
                                      mt: 1,
                                      ref: widget!.numofer,
                                      sac: widget!.cost?.toString(),
                                      rem: 'done',
                                      cost: widget!.cost,
                                      amt: widget!.cost?.toString(),
                                    );

                                    await currentUserReference!.update({
                                      ...mapToFirestore(
                                        {
                                          'SALDOYE': FieldValue.increment(
                                              -(widget!.cost!)),
                                        },
                                      ),
                                    });

                                    await ShahnraseedRecord.collection
                                        .doc()
                                        .set(createShahnraseedRecordData(
                                          creattime: getCurrentTimestamp,
                                          price: widget!.cost,
                                          network: 'الكهرباء',
                                          number: widget!.number,
                                          numberref: widget!.numofer,
                                          cost: widget!.cost,
                                          email: currentUserEmail,
                                        ));

                                    context.pushNamed(
                                      'DONERASEEED',
                                      queryParameters: {
                                        'sno': serializeParam(
                                          widget!.number,
                                          ParamType.String,
                                        ),
                                        'numberref': serializeParam(
                                          widget!.numofer,
                                          ParamType.int,
                                        ),
                                        'cost': serializeParam(
                                          widget!.cost,
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
                                'izalqeve' /* تأكيد */,
                              ),
                              options: FFButtonOptions(
                                width: double.infinity,
                                height: 50.0,
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 0.0, 0.0, 0.0),
                                iconPadding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 0.0, 0.0, 0.0),
                                color: Color(0xFF019A88),
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
                        if (widget!.sc == 42107)
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                16.0, 0.0, 16.0, 24.0),
                            child: FFButtonWidget(
                              onPressed: () async {
                                if (valueOrDefault(
                                        currentUserDocument?.saldoye, 0.0) >=
                                    functions.newCustomFunction5(
                                        widget!.cost?.toString())!) {
                                  if (valueOrDefault(
                                          currentUserDocument?.saldoye, 0.0) >=
                                      functions.newCustomFunction5(
                                          widget!.cost?.toString())!) {
                                    await PaymentMessageCall.call(
                                      ac: widget!.ac,
                                      sc: widget!.sc?.toString(),
                                      sno: widget!.number,
                                      mt: 1,
                                      ref: widget!.numofer,
                                      sac: widget!.cost?.toString(),
                                      rem: 'done',
                                      cost: widget!.cost,
                                      amt: widget!.cost?.toString(),
                                    );

                                    await currentUserReference!.update({
                                      ...mapToFirestore(
                                        {
                                          'SALDOYE': FieldValue.increment(
                                              -(widget!.cost!)),
                                        },
                                      ),
                                    });

                                    await ShahnraseedRecord.collection
                                        .doc()
                                        .set(createShahnraseedRecordData(
                                          creattime: getCurrentTimestamp,
                                          price: widget!.cost,
                                          network: 'الماء ',
                                          number: widget!.number,
                                          numberref: widget!.numofer,
                                          cost: widget!.cost,
                                          email: currentUserEmail,
                                        ));

                                    context.pushNamed(
                                      'DONERASEEED',
                                      queryParameters: {
                                        'sno': serializeParam(
                                          widget!.number,
                                          ParamType.String,
                                        ),
                                        'numberref': serializeParam(
                                          widget!.numofer,
                                          ParamType.int,
                                        ),
                                        'cost': serializeParam(
                                          widget!.cost,
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
                                'b4r8bf24' /* تأكيد */,
                              ),
                              options: FFButtonOptions(
                                width: double.infinity,
                                height: 50.0,
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 0.0, 0.0, 0.0),
                                iconPadding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 0.0, 0.0, 0.0),
                                color: Color(0xFF019A88),
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
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
