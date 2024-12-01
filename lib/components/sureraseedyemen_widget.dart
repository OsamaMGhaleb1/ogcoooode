import '/auth/firebase_auth/auth_util.dart';
import '/backend/api_requests/api_calls.dart';
import '/backend/backend.dart';
import '/backend/firebase_storage/storage.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/upload_data.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'sureraseedyemen_model.dart';
export 'sureraseedyemen_model.dart';

class SureraseedyemenWidget extends StatefulWidget {
  const SureraseedyemenWidget({
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
    this.solfa,
    this.total,
    this.numrefsolfah,
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
  final double? solfa;
  final double? total;
  final int? numrefsolfah;

  @override
  State<SureraseedyemenWidget> createState() => _SureraseedyemenWidgetState();
}

class _SureraseedyemenWidgetState extends State<SureraseedyemenWidget> {
  late SureraseedyemenModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => SureraseedyemenModel());
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
        color: FlutterFlowTheme.of(context).primaryBackground,
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
                padding: EdgeInsetsDirectional.fromSTEB(0.0, 12.0, 0.0, 0.0),
                child: Text(
                  valueOrDefault<String>(
                    widget!.ofernamer,
                    '0',
                  ),
                  textAlign: TextAlign.center,
                  style: FlutterFlowTheme.of(context).headlineSmall.override(
                        fontFamily: 'Tajawal',
                        letterSpacing: 0.0,
                      ),
                ),
              ),
            ),
            InkWell(
              splashColor: Colors.transparent,
              focusColor: Colors.transparent,
              hoverColor: Colors.transparent,
              highlightColor: Colors.transparent,
              onTap: () async {
                final selectedMedia = await selectMedia(
                  mediaSource: MediaSource.photoGallery,
                  multiImage: false,
                );
                if (selectedMedia != null &&
                    selectedMedia.every(
                        (m) => validateFileFormat(m.storagePath, context))) {
                  safeSetState(() => _model.isDataUploading = true);
                  var selectedUploadedFiles = <FFUploadedFile>[];

                  var downloadUrls = <String>[];
                  try {
                    selectedUploadedFiles = selectedMedia
                        .map((m) => FFUploadedFile(
                              name: m.storagePath.split('/').last,
                              bytes: m.bytes,
                              height: m.dimensions?.height,
                              width: m.dimensions?.width,
                              blurHash: m.blurHash,
                            ))
                        .toList();

                    downloadUrls = (await Future.wait(
                      selectedMedia.map(
                        (m) async => await uploadData(m.storagePath, m.bytes),
                      ),
                    ))
                        .where((u) => u != null)
                        .map((u) => u!)
                        .toList();
                  } finally {
                    _model.isDataUploading = false;
                  }
                  if (selectedUploadedFiles.length == selectedMedia.length &&
                      downloadUrls.length == selectedMedia.length) {
                    safeSetState(() {
                      _model.uploadedLocalFile = selectedUploadedFiles.first;
                      _model.uploadedFileUrl = downloadUrls.first;
                    });
                  } else {
                    safeSetState(() {});
                    return;
                  }
                }
              },
              child: ClipRRect(
                borderRadius: BorderRadius.circular(8.0),
                child: Image.asset(
                  'assets/images/nashwannews-2022-06-27_18-08-24_862990-780x470.webp',
                  width: 0.0,
                  height: 0.0,
                  fit: BoxFit.cover,
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
                      padding:
                          EdgeInsetsDirectional.fromSTEB(12.0, 8.0, 12.0, 8.0),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Text(
                            valueOrDefault<String>(
                              widget!.sno,
                              '0',
                            ),
                            style:
                                FlutterFlowTheme.of(context).bodyLarge.override(
                                      fontFamily: 'Inter',
                                      letterSpacing: 0.0,
                                    ),
                          ),
                          Text(
                            FFLocalizations.of(context).getText(
                              'ztqfjw6i' /* رقم الهاتف */,
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
                      padding:
                          EdgeInsetsDirectional.fromSTEB(12.0, 8.0, 12.0, 8.0),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Text(
                            valueOrDefault<String>(
                              widget!.coast?.toString(),
                              '0',
                            ),
                            style:
                                FlutterFlowTheme.of(context).bodyLarge.override(
                                      fontFamily: 'Inter',
                                      letterSpacing: 0.0,
                                    ),
                          ),
                          Text(
                            FFLocalizations.of(context).getText(
                              'c05wv0nm' /* السعر */,
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
                if (widget!.ofernamer != 'مبلغ')
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
                                widget!.solfa?.toString(),
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
                                'qmsr44tc' /* السلفة  */,
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
              ],
            ),
            Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                if ((widget!.solfa == 122.0) && (widget!.ofernamer != 'مبلغ'))
                  Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(16.0, 10.0, 16.0, 24.0),
                    child: FFButtonWidget(
                      onPressed: () async {
                        if (valueOrDefault(currentUserDocument?.saldoye, 0.0) >=
                            functions.newCustomFunction5(
                                widget!.total?.toString())!) {
                          if (valueOrDefault(
                                  currentUserDocument?.saldoye, 0.0) >=
                              functions.newCustomFunction5(
                                  widget!.total?.toString())!) {
                            await PaymentMessageCall.call(
                              ac: 7100,
                              sc: '42103',
                              sno: widget!.sno,
                              mt: widget!.mt,
                              ref: widget!.numberref,
                              sac: widget!.sac,
                              rem: 'done',
                              cost: widget!.coast,
                              amt: widget!.amt?.toString(),
                            );

                            await PaymentMessageCall.call(
                              ac: 7100,
                              sc: '42103',
                              sno: widget!.sno,
                              mt: widget!.mt,
                              ref: widget!.numberref,
                              sac: widget!.sac,
                              rem: 'done',
                              cost: widget!.solfa,
                              amt: widget!.solfa?.toString(),
                            );

                            await OffersManagementMessageYMOBILECall.call(
                              ac: 4002,
                              sc: 42103,
                              sno: widget!.sno,
                              sac: widget!.sac,
                            );

                            await currentUserReference!.update({
                              ...mapToFirestore(
                                {
                                  'SALDOYE':
                                      FieldValue.increment(-(widget!.total!)),
                                },
                              ),
                            });

                            await ShahnraseedRecord.collection
                                .doc()
                                .set(createShahnraseedRecordData(
                                  creattime: getCurrentTimestamp,
                                  price: widget!.coast,
                                  network: 'يمن موبايل',
                                  number: widget!.sno,
                                  numberref: widget!.numberref,
                                  cost: widget!.total,
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
                                  widget!.solfa,
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
                        'fextm3vh' /* تأكيد */,
                      ),
                      options: FFButtonOptions(
                        width: double.infinity,
                        height: 50.0,
                        padding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                        iconPadding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                        color: Color(0xFF0668F8),
                        textStyle:
                            FlutterFlowTheme.of(context).titleSmall.override(
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
                if ((widget!.ofernamer != 'مبلغ') && (widget!.solfa == 0.0))
                  Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(16.0, 10.0, 16.0, 24.0),
                    child: FFButtonWidget(
                      onPressed: () async {
                        if (valueOrDefault(currentUserDocument?.saldoye, 0.0) >=
                            functions.newCustomFunction5(
                                widget!.total?.toString())!) {
                          if (valueOrDefault(
                                  currentUserDocument?.saldoye, 0.0) >=
                              functions.newCustomFunction5(
                                  widget!.total?.toString())!) {
                            await PaymentMessageCall.call(
                              ac: 7100,
                              sc: '42103',
                              sno: widget!.sno,
                              mt: widget!.mt,
                              ref: widget!.numberref,
                              sac: widget!.sac,
                              rem: 'done',
                              cost: widget!.coast,
                              amt: widget!.amt?.toString(),
                            );

                            await OffersManagementMessageYMOBILECall.call(
                              ac: 4002,
                              sc: 42103,
                              sno: widget!.sno,
                              sac: widget!.sac,
                            );

                            await currentUserReference!.update({
                              ...mapToFirestore(
                                {
                                  'SALDOYE':
                                      FieldValue.increment(-(widget!.total!)),
                                },
                              ),
                            });

                            await ShahnraseedRecord.collection
                                .doc()
                                .set(createShahnraseedRecordData(
                                  creattime: getCurrentTimestamp,
                                  price: widget!.coast,
                                  network: 'يمن موبايل',
                                  number: widget!.sno,
                                  numberref: widget!.numberref,
                                  cost: widget!.total,
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
                                  widget!.solfa,
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
                        'v53cc6cv' /* تأكيد */,
                      ),
                      options: FFButtonOptions(
                        width: double.infinity,
                        height: 50.0,
                        padding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                        iconPadding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                        color: Color(0xFF0668F8),
                        textStyle:
                            FlutterFlowTheme.of(context).titleSmall.override(
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
                if (widget!.ofernamer == 'مبلغ')
                  Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(16.0, 10.0, 16.0, 24.0),
                    child: FFButtonWidget(
                      onPressed: () async {
                        if (valueOrDefault(currentUserDocument?.saldoye, 0.0) >=
                            functions.newCustomFunction5(
                                widget!.coast?.toString())!) {
                          if (valueOrDefault(
                                  currentUserDocument?.saldoye, 0.0) >=
                              functions.newCustomFunction5(
                                  widget!.coast?.toString())!) {
                            await PaymentMessageCall.call(
                              ac: widget!.ac,
                              sc: widget!.sc?.toString(),
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
                                  'SALDOYE':
                                      FieldValue.increment(-(widget!.coast!)),
                                },
                              ),
                            });

                            await ShahnraseedRecord.collection
                                .doc()
                                .set(createShahnraseedRecordData(
                                  creattime: getCurrentTimestamp,
                                  price: widget!.amt,
                                  network: 'يمن موبايل',
                                  number: widget!.sno,
                                  numberref: widget!.numberref,
                                  image: _model.uploadedFileUrl,
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
                        'oj3stqfk' /* تأكيد */,
                      ),
                      options: FFButtonOptions(
                        width: double.infinity,
                        height: 50.0,
                        padding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                        iconPadding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                        color: Color(0xFF0668F8),
                        textStyle:
                            FlutterFlowTheme.of(context).titleSmall.override(
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
    );
  }
}
