import '/backend/api_requests/api_calls.dart';
import '/backend/backend.dart';
import '/components/surerasid_widget.dart';
import '/flutter_flow/flutter_flow_button_tabbar.dart';
import '/flutter_flow/flutter_flow_choice_chips.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import '/flutter_flow/random_data_util.dart' as random_data;
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:webviewx_plus/webviewx_plus.dart';
import 'sbafone1_model.dart';
export 'sbafone1_model.dart';

class Sbafone1Widget extends StatefulWidget {
  const Sbafone1Widget({
    super.key,
    required this.name,
    this.jk,
  });

  final String? name;
  final ShahnraseedRecord? jk;

  @override
  State<Sbafone1Widget> createState() => _Sbafone1WidgetState();
}

class _Sbafone1WidgetState extends State<Sbafone1Widget>
    with TickerProviderStateMixin {
  late Sbafone1Model _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => Sbafone1Model());

    _model.subscriberTextController ??= TextEditingController();
    _model.subscriberFocusNode ??= FocusNode();

    _model.actionTextController ??= TextEditingController();
    _model.actionFocusNode ??= FocusNode();

    _model.numberrefTextController ??=
        TextEditingController(text: random_data.randomInteger(1, 7).toString());
    _model.numberrefFocusNode ??= FocusNode();

    _model.nameofferTextController ??= TextEditingController();
    _model.nameofferFocusNode ??= FocusNode();

    _model.mtTextController ??= TextEditingController();
    _model.mtFocusNode ??= FocusNode();

    _model.mt22TextController ??= TextEditingController();
    _model.mt22FocusNode ??= FocusNode();

    _model.priceTextController ??= TextEditingController();
    _model.priceFocusNode ??= FocusNode();

    _model.coastTextController ??= TextEditingController();
    _model.coastFocusNode ??= FocusNode();

    _model.textController9 ??= TextEditingController();
    _model.textFieldFocusNode1 ??= FocusNode();

    _model.tabBarController1 = TabController(
      vsync: this,
      length: 2,
      initialIndex: 1,
    )..addListener(() => safeSetState(() {}));
    _model.amontTextController ??= TextEditingController();
    _model.amontFocusNode ??= FocusNode();

    _model.tabBarController2 = TabController(
      vsync: this,
      length: 2,
      initialIndex: 1,
    )..addListener(() => safeSetState(() {}));
    _model.textController11 ??= TextEditingController(text: widget!.name);
    _model.textFieldFocusNode2 ??= FocusNode();

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {
          _model.subscriberTextController?.text =
              FFLocalizations.of(context).getText(
            'bs56bnz1' /* 0 */,
          );
          _model.actionTextController?.text =
              FFLocalizations.of(context).getText(
            'zumuigse' /* 7200 */,
          );
          _model.mtTextController?.text = FFLocalizations.of(context).getText(
            '8ounq255' /* 1 */,
          );
          _model.mt22TextController?.text = FFLocalizations.of(context).getText(
            '5fjpwvd0' /* 1 */,
          );
        }));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        appBar: AppBar(
          backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
          automaticallyImplyLeading: false,
          leading: FlutterFlowIconButton(
            borderColor: Colors.transparent,
            borderRadius: 30.0,
            borderWidth: 1.0,
            buttonSize: 60.0,
            icon: Icon(
              Icons.arrow_back_sharp,
              color: FlutterFlowTheme.of(context).primaryText,
              size: 30.0,
            ),
            onPressed: () async {
              context.pop();
            },
          ),
          title: Padding(
            padding: EdgeInsetsDirectional.fromSTEB(8.0, 0.0, 8.0, 0.0),
            child: TextFormField(
              controller: _model.textController11,
              focusNode: _model.textFieldFocusNode2,
              autofocus: true,
              readOnly: true,
              obscureText: false,
              decoration: InputDecoration(
                labelStyle: FlutterFlowTheme.of(context).labelMedium.override(
                      fontFamily: 'Inter',
                      letterSpacing: 0.0,
                    ),
                hintStyle: FlutterFlowTheme.of(context).labelMedium.override(
                      fontFamily: 'Inter',
                      letterSpacing: 0.0,
                    ),
                enabledBorder: InputBorder.none,
                focusedBorder: InputBorder.none,
                errorBorder: InputBorder.none,
                focusedErrorBorder: InputBorder.none,
              ),
              style: FlutterFlowTheme.of(context).bodyMedium.override(
                    fontFamily: 'Tajawal',
                    fontSize: 0.0,
                    letterSpacing: 0.0,
                    fontWeight: FontWeight.bold,
                  ),
              textAlign: TextAlign.center,
              validator: _model.textController11Validator.asValidator(context),
            ),
          ),
          actions: [],
          centerTitle: false,
          elevation: 2.0,
        ),
        body: SafeArea(
          top: true,
          child: FutureBuilder<ApiCallResponse>(
            future: PaymentMessageCall.call(),
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
              final formPaymentMessageResponse = snapshot.data!;

              return Form(
                key: _model.formKey,
                autovalidateMode: AutovalidateMode.disabled,
                child: SingleChildScrollView(
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Container(
                        width: double.infinity,
                        height: 0.0,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(5.0),
                            bottomRight: Radius.circular(5.0),
                            topLeft: Radius.circular(0.0),
                            topRight: Radius.circular(0.0),
                          ),
                        ),
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Container(
                              width: 200.0,
                              child: TextFormField(
                                controller: _model.subscriberTextController,
                                focusNode: _model.subscriberFocusNode,
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
                                style: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      fontFamily: 'Inter',
                                      letterSpacing: 0.0,
                                    ),
                                cursorColor:
                                    FlutterFlowTheme.of(context).primaryText,
                                validator: _model
                                    .subscriberTextControllerValidator
                                    .asValidator(context),
                              ),
                            ),
                            Container(
                              width: 200.0,
                              child: TextFormField(
                                controller: _model.actionTextController,
                                focusNode: _model.actionFocusNode,
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
                                style: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      fontFamily: 'Inter',
                                      letterSpacing: 0.0,
                                    ),
                                cursorColor:
                                    FlutterFlowTheme.of(context).primaryText,
                                validator: _model.actionTextControllerValidator
                                    .asValidator(context),
                              ),
                            ),
                            Container(
                              width: 200.0,
                              child: TextFormField(
                                controller: _model.numberrefTextController,
                                focusNode: _model.numberrefFocusNode,
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
                                style: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      fontFamily: 'Inter',
                                      letterSpacing: 0.0,
                                    ),
                                cursorColor:
                                    FlutterFlowTheme.of(context).primaryText,
                                validator: _model
                                    .numberrefTextControllerValidator
                                    .asValidator(context),
                              ),
                            ),
                            Container(
                              width: 200.0,
                              child: TextFormField(
                                controller: _model.nameofferTextController,
                                focusNode: _model.nameofferFocusNode,
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
                                style: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      fontFamily: 'Inter',
                                      letterSpacing: 0.0,
                                    ),
                                cursorColor:
                                    FlutterFlowTheme.of(context).primaryText,
                                validator: _model
                                    .nameofferTextControllerValidator
                                    .asValidator(context),
                              ),
                            ),
                            Container(
                              width: 200.0,
                              child: TextFormField(
                                controller: _model.mtTextController,
                                focusNode: _model.mtFocusNode,
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
                                style: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      fontFamily: 'Inter',
                                      letterSpacing: 0.0,
                                    ),
                                cursorColor:
                                    FlutterFlowTheme.of(context).primaryText,
                                validator: _model.mtTextControllerValidator
                                    .asValidator(context),
                              ),
                            ),
                            Container(
                              width: 200.0,
                              child: TextFormField(
                                controller: _model.mt22TextController,
                                focusNode: _model.mt22FocusNode,
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
                                style: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      fontFamily: 'Inter',
                                      letterSpacing: 0.0,
                                    ),
                                cursorColor:
                                    FlutterFlowTheme.of(context).primaryText,
                                validator: _model.mt22TextControllerValidator
                                    .asValidator(context),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  8.0, 10.0, 8.0, 0.0),
                              child: Container(
                                width: 300.0,
                                child: TextFormField(
                                  controller: _model.priceTextController,
                                  focusNode: _model.priceFocusNode,
                                  autofocus: true,
                                  obscureText: false,
                                  decoration: InputDecoration(
                                    labelText:
                                        FFLocalizations.of(context).getText(
                                      'u5vrxcd1' /* مبلغ مخصص */,
                                    ),
                                    labelStyle: FlutterFlowTheme.of(context)
                                        .labelMedium
                                        .override(
                                          fontFamily: 'Tajawal',
                                          letterSpacing: 0.0,
                                        ),
                                    hintText:
                                        FFLocalizations.of(context).getText(
                                      '3gwhxrjr' /* 200 */,
                                    ),
                                    hintStyle: FlutterFlowTheme.of(context)
                                        .labelMedium
                                        .override(
                                          fontFamily: 'Inter',
                                          fontSize: 18.0,
                                          letterSpacing: 0.0,
                                          fontWeight: FontWeight.bold,
                                        ),
                                    enabledBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                        color: FlutterFlowTheme.of(context)
                                            .secondaryText,
                                        width: 2.0,
                                      ),
                                      borderRadius: BorderRadius.circular(8.0),
                                    ),
                                    focusedBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                        color: FlutterFlowTheme.of(context)
                                            .primary,
                                        width: 2.0,
                                      ),
                                      borderRadius: BorderRadius.circular(8.0),
                                    ),
                                    errorBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                        color:
                                            FlutterFlowTheme.of(context).error,
                                        width: 2.0,
                                      ),
                                      borderRadius: BorderRadius.circular(8.0),
                                    ),
                                    focusedErrorBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                        color:
                                            FlutterFlowTheme.of(context).error,
                                        width: 2.0,
                                      ),
                                      borderRadius: BorderRadius.circular(8.0),
                                    ),
                                  ),
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: 'Tajawal',
                                        letterSpacing: 0.0,
                                      ),
                                  keyboardType: TextInputType.number,
                                  validator: _model.priceTextControllerValidator
                                      .asValidator(context),
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  8.0, 10.0, 8.0, 0.0),
                              child: Container(
                                width: 300.0,
                                child: TextFormField(
                                  controller: _model.coastTextController,
                                  focusNode: _model.coastFocusNode,
                                  autofocus: true,
                                  obscureText: false,
                                  decoration: InputDecoration(
                                    labelText:
                                        FFLocalizations.of(context).getText(
                                      'wvm2k088' /* مبلغ مخصص */,
                                    ),
                                    labelStyle: FlutterFlowTheme.of(context)
                                        .labelMedium
                                        .override(
                                          fontFamily: 'Tajawal',
                                          letterSpacing: 0.0,
                                        ),
                                    hintText:
                                        FFLocalizations.of(context).getText(
                                      '4fpx2nnr' /* 200 */,
                                    ),
                                    hintStyle: FlutterFlowTheme.of(context)
                                        .labelMedium
                                        .override(
                                          fontFamily: 'Inter',
                                          fontSize: 18.0,
                                          letterSpacing: 0.0,
                                          fontWeight: FontWeight.bold,
                                        ),
                                    enabledBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                        color: FlutterFlowTheme.of(context)
                                            .secondaryText,
                                        width: 2.0,
                                      ),
                                      borderRadius: BorderRadius.circular(8.0),
                                    ),
                                    focusedBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                        color: FlutterFlowTheme.of(context)
                                            .primary,
                                        width: 2.0,
                                      ),
                                      borderRadius: BorderRadius.circular(8.0),
                                    ),
                                    errorBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                        color:
                                            FlutterFlowTheme.of(context).error,
                                        width: 2.0,
                                      ),
                                      borderRadius: BorderRadius.circular(8.0),
                                    ),
                                    focusedErrorBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                        color:
                                            FlutterFlowTheme.of(context).error,
                                        width: 2.0,
                                      ),
                                      borderRadius: BorderRadius.circular(8.0),
                                    ),
                                  ),
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: 'Tajawal',
                                        letterSpacing: 0.0,
                                      ),
                                  keyboardType: TextInputType.number,
                                  validator: _model.coastTextControllerValidator
                                      .asValidator(context),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Align(
                        alignment: AlignmentDirectional(0.0, 0.0),
                        child: Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 20.0, 0.0, 0.0),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Align(
                                alignment: AlignmentDirectional(0.0, 0.0),
                                child: Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0.0, 0.0, 0.0, 10.0),
                                  child: Text(
                                    FFLocalizations.of(context).getText(
                                      '0pi8fj98' /* ادخل رقم سبأفون  */,
                                    ),
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily: 'Tajawal',
                                          letterSpacing: 0.0,
                                          fontWeight: FontWeight.w800,
                                        ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Align(
                        alignment: AlignmentDirectional(0.0, 0.0),
                        child: Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              5.0, 0.0, 5.0, 8.0),
                          child: Container(
                            decoration: BoxDecoration(
                              color: FlutterFlowTheme.of(context)
                                  .secondaryBackground,
                              boxShadow: [
                                BoxShadow(
                                  blurRadius: 1.0,
                                  color: FlutterFlowTheme.of(context)
                                      .secondaryText,
                                  offset: Offset(
                                    0.0,
                                    2.0,
                                  ),
                                )
                              ],
                              borderRadius: BorderRadius.circular(6.0),
                            ),
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0.0, 10.0, 0.0, 0.0),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            5.0, 0.0, 0.0, 0.0),
                                        child: Container(
                                          width: 61.0,
                                          height: 46.0,
                                          decoration: BoxDecoration(),
                                          child: Container(
                                            width: 100.0,
                                            height: 100.0,
                                            clipBehavior: Clip.antiAlias,
                                            decoration: BoxDecoration(
                                              shape: BoxShape.circle,
                                            ),
                                            child: Image.asset(
                                              'assets/images/22-03-21-853555007.jpg',
                                              fit: BoxFit.cover,
                                            ),
                                          ),
                                        ),
                                      ),
                                      Expanded(
                                        child: Align(
                                          alignment:
                                              AlignmentDirectional(0.0, 0.0),
                                          child: Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    15.0, 0.0, 30.0, 0.0),
                                            child: TextFormField(
                                              controller:
                                                  _model.textController9,
                                              focusNode:
                                                  _model.textFieldFocusNode1,
                                              onChanged: (_) =>
                                                  EasyDebounce.debounce(
                                                '_model.textController9',
                                                Duration(milliseconds: 2000),
                                                () async {
                                                  _model.nqury = 101;
                                                  safeSetState(() {});
                                                },
                                              ),
                                              autofocus: true,
                                              textCapitalization:
                                                  TextCapitalization.none,
                                              obscureText: false,
                                              decoration: InputDecoration(
                                                labelText:
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                  '1lpk23tx' /* رقم المشترك  */,
                                                ),
                                                labelStyle:
                                                    FlutterFlowTheme.of(context)
                                                        .labelMedium
                                                        .override(
                                                          fontFamily: 'Tajawal',
                                                          fontSize: 20.0,
                                                          letterSpacing: 0.0,
                                                        ),
                                                hintStyle:
                                                    FlutterFlowTheme.of(context)
                                                        .labelMedium
                                                        .override(
                                                          fontFamily: 'Tajawal',
                                                          fontSize: 20.0,
                                                          letterSpacing: 0.0,
                                                          fontWeight:
                                                              FontWeight.bold,
                                                        ),
                                                enabledBorder:
                                                    OutlineInputBorder(
                                                  borderSide: BorderSide(
                                                    color: Color(0xFF1B00FF),
                                                    width: 2.0,
                                                  ),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          8.0),
                                                ),
                                                focusedBorder:
                                                    OutlineInputBorder(
                                                  borderSide: BorderSide(
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .primary,
                                                    width: 2.0,
                                                  ),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          8.0),
                                                ),
                                                errorBorder: OutlineInputBorder(
                                                  borderSide: BorderSide(
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .error,
                                                    width: 2.0,
                                                  ),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          8.0),
                                                ),
                                                focusedErrorBorder:
                                                    OutlineInputBorder(
                                                  borderSide: BorderSide(
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .error,
                                                    width: 2.0,
                                                  ),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          8.0),
                                                ),
                                                contentPadding:
                                                    EdgeInsetsDirectional
                                                        .fromSTEB(10.0, 0.0,
                                                            10.0, 0.0),
                                                prefixIcon: Icon(
                                                  Icons.phone_iphone_rounded,
                                                  color: Color(0xFF3722F6),
                                                ),
                                              ),
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily: 'Tajawal',
                                                        fontSize: 20.0,
                                                        letterSpacing: 0.0,
                                                        fontWeight:
                                                            FontWeight.bold,
                                                      ),
                                              textAlign: TextAlign.justify,
                                              maxLength: 9,
                                              keyboardType: TextInputType.phone,
                                              validator: _model
                                                  .textController9Validator
                                                  .asValidator(context),
                                              inputFormatters: [
                                                FilteringTextInputFormatter
                                                    .allow(RegExp('[0-9]'))
                                              ],
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                if (_model.nqury == 101)
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0.0, 10.0, 0.0, 10.0),
                                    child: FutureBuilder<ApiCallResponse>(
                                      future: QuerySubscriberBalanceMessageCall
                                          .call(
                                        sno: _model.textController9.text,
                                        sc: 42101,
                                      ),
                                      builder: (context, snapshot) {
                                        // Customize what your widget looks like when it's loading.
                                        if (!snapshot.hasData) {
                                          return Center(
                                            child: SizedBox(
                                              width: 44.0,
                                              height: 44.0,
                                              child: CircularProgressIndicator(
                                                valueColor:
                                                    AlwaysStoppedAnimation<
                                                        Color>(
                                                  FlutterFlowTheme.of(context)
                                                      .primary,
                                                ),
                                              ),
                                            ),
                                          );
                                        }
                                        final rowQuerySubscriberBalanceMessageResponse =
                                            snapshot.data!;

                                        return Row(
                                          mainAxisSize: MainAxisSize.max,
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Text(
                                              getJsonField(
                                                rowQuerySubscriberBalanceMessageResponse
                                                    .jsonBody,
                                                r'''$.SD''',
                                              ).toString(),
                                              textAlign: TextAlign.center,
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily: 'Tajawal',
                                                        fontSize: 14.0,
                                                        letterSpacing: 0.0,
                                                      ),
                                            ),
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      10.0, 0.0, 10.0, 0.0),
                                              child: Text(
                                                FFLocalizations.of(context)
                                                    .getText(
                                                  'ftbwzhzt' /* الرصيد */,
                                                ),
                                                textAlign: TextAlign.center,
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily: 'Tajawal',
                                                          fontSize: 18.0,
                                                          letterSpacing: 0.0,
                                                        ),
                                              ),
                                            ),
                                          ],
                                        );
                                      },
                                    ),
                                  ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      Container(
                        width: 400.0,
                        height: 430.0,
                        decoration: BoxDecoration(),
                        child: SingleChildScrollView(
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Container(
                                    width: 270.0,
                                    height: 39.0,
                                    decoration: BoxDecoration(
                                      color: Color(0x0014181B),
                                    ),
                                    child: Align(
                                      alignment: AlignmentDirectional(0.0, 0.0),
                                      child: FlutterFlowChoiceChips(
                                        options: [
                                          ChipData(FFLocalizations.of(context)
                                              .getText(
                                            '7qwqf599' /* دفع مسبق */,
                                          )),
                                          ChipData(FFLocalizations.of(context)
                                              .getText(
                                            'yc853lm1' /* فوتره */,
                                          ))
                                        ],
                                        onChanged: (val) async {
                                          safeSetState(() =>
                                              _model.choiceChipsValue =
                                                  val?.firstOrNull);
                                          safeSetState(() {
                                            _model.mt22TextController?.text =
                                                (_model.choiceChipsValue ==
                                                        'فوتره'
                                                    ? '2'
                                                    : '1');
                                          });
                                          _model.button =
                                              _model.choiceChipsValue ==
                                                      'دفع مسبق'
                                                  ? 20
                                                  : 21;
                                          safeSetState(() {});
                                        },
                                        selectedChipStyle: ChipStyle(
                                          backgroundColor: Color(0xE92004DD),
                                          textStyle: FlutterFlowTheme.of(
                                                  context)
                                              .bodyMedium
                                              .override(
                                                fontFamily: 'Tajawal',
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .info,
                                                letterSpacing: 0.0,
                                              ),
                                          iconColor:
                                              FlutterFlowTheme.of(context).info,
                                          iconSize: 0.0,
                                          elevation: 0.0,
                                          borderColor: Color(0x0039D2C0),
                                          borderRadius:
                                              BorderRadius.circular(8.0),
                                        ),
                                        unselectedChipStyle: ChipStyle(
                                          backgroundColor:
                                              FlutterFlowTheme.of(context)
                                                  .secondaryBackground,
                                          textStyle: FlutterFlowTheme.of(
                                                  context)
                                              .bodyMedium
                                              .override(
                                                fontFamily: 'Inter',
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .secondaryText,
                                                letterSpacing: 0.0,
                                              ),
                                          iconColor:
                                              FlutterFlowTheme.of(context)
                                                  .secondaryText,
                                          iconSize: 16.0,
                                          elevation: 0.0,
                                          borderRadius:
                                              BorderRadius.circular(1.0),
                                        ),
                                        chipSpacing: 0.0,
                                        multiselect: false,
                                        initialized:
                                            _model.choiceChipsValue != null,
                                        alignment: WrapAlignment.start,
                                        controller: _model
                                                .choiceChipsValueController ??=
                                            FormFieldController<List<String>>(
                                          [
                                            FFLocalizations.of(context).getText(
                                              'za2h5tnt' /* دفع مسبق */,
                                            )
                                          ],
                                        ),
                                        wrapped: true,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              SingleChildScrollView(
                                child: Column(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    if (_model.choiceChipsValue == 'فوتره')
                                      Align(
                                        alignment:
                                            AlignmentDirectional(0.0, 0.0),
                                        child: Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 8.0, 0.0, 0.0),
                                          child: Container(
                                            width: 400.0,
                                            height: 400.0,
                                            decoration: BoxDecoration(),
                                            child: Column(
                                              children: [
                                                Align(
                                                  alignment: Alignment(0.0, 0),
                                                  child:
                                                      FlutterFlowButtonTabBar(
                                                    useToggleButtonStyle: true,
                                                    labelStyle: FlutterFlowTheme
                                                            .of(context)
                                                        .titleMedium
                                                        .override(
                                                          fontFamily: 'Tajawal',
                                                          letterSpacing: 0.0,
                                                        ),
                                                    unselectedLabelStyle:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .titleMedium
                                                            .override(
                                                              fontFamily:
                                                                  'Inter',
                                                              letterSpacing:
                                                                  0.0,
                                                            ),
                                                    labelColor:
                                                        Color(0xFFE8F4FD),
                                                    unselectedLabelColor:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .secondaryText,
                                                    backgroundColor:
                                                        Color(0xE9330FFD),
                                                    unselectedBackgroundColor:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .alternate,
                                                    borderColor:
                                                        Color(0xE92107FF),
                                                    unselectedBorderColor:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .alternate,
                                                    borderWidth: 2.0,
                                                    borderRadius: 8.0,
                                                    elevation: 0.0,
                                                    buttonMargin:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(8.0, 0.0,
                                                                8.0, 0.0),
                                                    padding:
                                                        EdgeInsets.all(2.0),
                                                    tabs: [
                                                      Tab(
                                                        text:
                                                            FFLocalizations.of(
                                                                    context)
                                                                .getText(
                                                          'y8bcdx4j' /* باقات */,
                                                        ),
                                                      ),
                                                      Tab(
                                                        text:
                                                            FFLocalizations.of(
                                                                    context)
                                                                .getText(
                                                          '20hhf44q' /* مبلغ */,
                                                        ),
                                                      ),
                                                    ],
                                                    controller: _model
                                                        .tabBarController1,
                                                    onTap: (i) async {
                                                      [
                                                        () async {
                                                          safeSetState(() {
                                                            _model
                                                                .actionTextController
                                                                ?.text = '7200';
                                                          });
                                                          _model.subscribertype =
                                                              '1';
                                                          safeSetState(() {});
                                                          _model.button = 20;
                                                          safeSetState(() {});
                                                        },
                                                        () async {
                                                          safeSetState(() {
                                                            _model
                                                                .actionTextController
                                                                ?.text = '7100';
                                                          });
                                                          _model.button = 2001;
                                                          safeSetState(() {});
                                                        }
                                                      ][i]();
                                                    },
                                                  ),
                                                ),
                                                Expanded(
                                                  child: TabBarView(
                                                    controller: _model
                                                        .tabBarController1,
                                                    physics:
                                                        const NeverScrollableScrollPhysics(),
                                                    children: [
                                                      SingleChildScrollView(
                                                        child: Column(
                                                          mainAxisSize:
                                                              MainAxisSize.max,
                                                          children: [
                                                            SingleChildScrollView(
                                                              child: Column(
                                                                mainAxisSize:
                                                                    MainAxisSize
                                                                        .max,
                                                                children: [
                                                                  SingleChildScrollView(
                                                                    child:
                                                                        Column(
                                                                      mainAxisSize:
                                                                          MainAxisSize
                                                                              .max,
                                                                      children: [
                                                                        Padding(
                                                                          padding: EdgeInsetsDirectional.fromSTEB(
                                                                              0.0,
                                                                              5.0,
                                                                              0.0,
                                                                              5.0),
                                                                          child:
                                                                              InkWell(
                                                                            splashColor:
                                                                                Colors.transparent,
                                                                            focusColor:
                                                                                Colors.transparent,
                                                                            hoverColor:
                                                                                Colors.transparent,
                                                                            highlightColor:
                                                                                Colors.transparent,
                                                                            onTap:
                                                                                () async {
                                                                              _model.nqury = 2;
                                                                              safeSetState(() {});
                                                                            },
                                                                            child:
                                                                                Container(
                                                                              width: 400.0,
                                                                              decoration: BoxDecoration(
                                                                                color: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                borderRadius: BorderRadius.circular(12.0),
                                                                                border: Border.all(
                                                                                  color: _model.nqury == 2 ? Color(0xE97004DD) : FlutterFlowTheme.of(context).secondaryBackground,
                                                                                ),
                                                                              ),
                                                                              child: Padding(
                                                                                padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 5.0),
                                                                                child: SingleChildScrollView(
                                                                                  child: Column(
                                                                                    mainAxisSize: MainAxisSize.max,
                                                                                    children: [
                                                                                      Padding(
                                                                                        padding: EdgeInsetsDirectional.fromSTEB(0.0, 10.0, 0.0, 10.0),
                                                                                        child: Row(
                                                                                          mainAxisSize: MainAxisSize.max,
                                                                                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                                                          children: [
                                                                                            Align(
                                                                                              alignment: AlignmentDirectional(-1.0, 0.0),
                                                                                              child: Padding(
                                                                                                padding: EdgeInsetsDirectional.fromSTEB(20.0, 0.0, 20.0, 0.0),
                                                                                                child: Icon(
                                                                                                  Icons.arrow_drop_down_rounded,
                                                                                                  color: FlutterFlowTheme.of(context).primaryText,
                                                                                                  size: 24.0,
                                                                                                ),
                                                                                              ),
                                                                                            ),
                                                                                            Align(
                                                                                              alignment: AlignmentDirectional(0.0, 0.0),
                                                                                              child: Padding(
                                                                                                padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 20.0, 0.0),
                                                                                                child: Text(
                                                                                                  FFLocalizations.of(context).getText(
                                                                                                    'nilwtdvt' /* باقات فورجي */,
                                                                                                  ),
                                                                                                  textAlign: TextAlign.center,
                                                                                                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                        fontFamily: 'Tajawal',
                                                                                                        fontSize: 16.0,
                                                                                                        letterSpacing: 0.0,
                                                                                                      ),
                                                                                                ),
                                                                                              ),
                                                                                            ),
                                                                                            Icon(
                                                                                              Icons.arrow_back,
                                                                                              color: FlutterFlowTheme.of(context).primaryText,
                                                                                              size: 0.0,
                                                                                            ),
                                                                                          ],
                                                                                        ),
                                                                                      ),
                                                                                      if (_model.nqury == 2)
                                                                                        StreamBuilder<List<SabafonRecord>>(
                                                                                          stream: querySabafonRecord(
                                                                                            queryBuilder: (sabafonRecord) => sabafonRecord
                                                                                                .where(
                                                                                                  'mainname',
                                                                                                  isEqualTo: 'باقات فورجي',
                                                                                                )
                                                                                                .where(
                                                                                                  'type',
                                                                                                  isEqualTo: 'فوتره',
                                                                                                ),
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
                                                                                            List<SabafonRecord> listViewSabafonRecordList = snapshot.data!;

                                                                                            return ListView.builder(
                                                                                              padding: EdgeInsets.zero,
                                                                                              primary: false,
                                                                                              shrinkWrap: true,
                                                                                              scrollDirection: Axis.vertical,
                                                                                              itemCount: listViewSabafonRecordList.length,
                                                                                              itemBuilder: (context, listViewIndex) {
                                                                                                final listViewSabafonRecord = listViewSabafonRecordList[listViewIndex];
                                                                                                return Padding(
                                                                                                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 2.0, 0.0, 2.0),
                                                                                                  child: Container(
                                                                                                    width: double.infinity,
                                                                                                    height: 60.0,
                                                                                                    decoration: BoxDecoration(
                                                                                                      color: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                                      border: Border.all(
                                                                                                        color: Color(0xE97004DD),
                                                                                                      ),
                                                                                                    ),
                                                                                                    child: Row(
                                                                                                      mainAxisSize: MainAxisSize.max,
                                                                                                      children: [
                                                                                                        Align(
                                                                                                          alignment: AlignmentDirectional(0.0, 0.0),
                                                                                                          child: Padding(
                                                                                                            padding: EdgeInsetsDirectional.fromSTEB(5.0, 0.0, 5.0, 0.0),
                                                                                                            child: Container(
                                                                                                              width: 80.0,
                                                                                                              height: 20.0,
                                                                                                              decoration: BoxDecoration(
                                                                                                                color: Color(0xE90704DD),
                                                                                                                borderRadius: BorderRadius.circular(8.0),
                                                                                                              ),
                                                                                                              alignment: AlignmentDirectional(0.0, 0.0),
                                                                                                              child: Padding(
                                                                                                                padding: EdgeInsetsDirectional.fromSTEB(10.0, 0.0, 5.0, 0.0),
                                                                                                                child: Text(
                                                                                                                  listViewSabafonRecord.cost.toString(),
                                                                                                                  textAlign: TextAlign.center,
                                                                                                                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                                        fontFamily: 'Inter',
                                                                                                                        color: Color(0xFFF0F8FF),
                                                                                                                        letterSpacing: 0.0,
                                                                                                                      ),
                                                                                                                ),
                                                                                                              ),
                                                                                                            ),
                                                                                                          ),
                                                                                                        ),
                                                                                                        Expanded(
                                                                                                          child: Material(
                                                                                                            color: Colors.transparent,
                                                                                                            child: Theme(
                                                                                                              data: ThemeData(
                                                                                                                checkboxTheme: CheckboxThemeData(
                                                                                                                  visualDensity: VisualDensity.compact,
                                                                                                                  materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                                                                                                                ),
                                                                                                                unselectedWidgetColor: FlutterFlowTheme.of(context).alternate,
                                                                                                              ),
                                                                                                              child: CheckboxListTile(
                                                                                                                value: _model.checkboxListTileValueMap1[listViewSabafonRecord] ??= false,
                                                                                                                onChanged: (newValue) async {
                                                                                                                  safeSetState(() => _model.checkboxListTileValueMap1[listViewSabafonRecord] = newValue!);
                                                                                                                  if (newValue!) {
                                                                                                                    safeSetState(() {
                                                                                                                      _model.priceTextController?.text = listViewSabafonRecord.amount.toString();
                                                                                                                    });
                                                                                                                    safeSetState(() {
                                                                                                                      _model.subscriberTextController?.text = listViewSabafonRecord.id;
                                                                                                                    });
                                                                                                                    safeSetState(() {
                                                                                                                      _model.nameofferTextController?.text = listViewSabafonRecord.name;
                                                                                                                    });
                                                                                                                    safeSetState(() {
                                                                                                                      _model.coastTextController?.text = listViewSabafonRecord.cost.toString();
                                                                                                                    });
                                                                                                                    _model.numerref = random_data.randomInteger(2, 8);
                                                                                                                    safeSetState(() {});
                                                                                                                  } else {
                                                                                                                    safeSetState(() {
                                                                                                                      _model.nameofferTextController?.clear();
                                                                                                                      _model.priceTextController?.clear();
                                                                                                                      _model.coastTextController?.clear();
                                                                                                                    });
                                                                                                                  }
                                                                                                                },
                                                                                                                title: Text(
                                                                                                                  listViewSabafonRecord.name,
                                                                                                                  textAlign: TextAlign.center,
                                                                                                                  style: FlutterFlowTheme.of(context).titleLarge.override(
                                                                                                                        fontFamily: 'Inter',
                                                                                                                        fontSize: 14.0,
                                                                                                                        letterSpacing: 0.0,
                                                                                                                      ),
                                                                                                                ),
                                                                                                                tileColor: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                                                activeColor: Color(0xFFC9AE03),
                                                                                                                checkColor: FlutterFlowTheme.of(context).info,
                                                                                                                dense: false,
                                                                                                                controlAffinity: ListTileControlAffinity.trailing,
                                                                                                                contentPadding: EdgeInsetsDirectional.fromSTEB(12.0, 0.0, 12.0, 0.0),
                                                                                                                shape: RoundedRectangleBorder(
                                                                                                                  borderRadius: BorderRadius.circular(8.0),
                                                                                                                ),
                                                                                                              ),
                                                                                                            ),
                                                                                                          ),
                                                                                                        ),
                                                                                                      ],
                                                                                                    ),
                                                                                                  ),
                                                                                                );
                                                                                              },
                                                                                            );
                                                                                          },
                                                                                        ),
                                                                                    ],
                                                                                  ),
                                                                                ),
                                                                              ),
                                                                            ),
                                                                          ),
                                                                        ),
                                                                      ],
                                                                    ),
                                                                  ),
                                                                  SingleChildScrollView(
                                                                    child:
                                                                        Column(
                                                                      mainAxisSize:
                                                                          MainAxisSize
                                                                              .max,
                                                                      children: [
                                                                        Padding(
                                                                          padding: EdgeInsetsDirectional.fromSTEB(
                                                                              0.0,
                                                                              5.0,
                                                                              0.0,
                                                                              5.0),
                                                                          child:
                                                                              InkWell(
                                                                            splashColor:
                                                                                Colors.transparent,
                                                                            focusColor:
                                                                                Colors.transparent,
                                                                            hoverColor:
                                                                                Colors.transparent,
                                                                            highlightColor:
                                                                                Colors.transparent,
                                                                            onTap:
                                                                                () async {
                                                                              _model.nqury = 4;
                                                                              safeSetState(() {});
                                                                            },
                                                                            child:
                                                                                Container(
                                                                              width: 400.0,
                                                                              decoration: BoxDecoration(
                                                                                color: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                borderRadius: BorderRadius.circular(12.0),
                                                                                border: Border.all(
                                                                                  color: _model.nqury == 4 ? Color(0xE97004DD) : FlutterFlowTheme.of(context).secondaryBackground,
                                                                                ),
                                                                              ),
                                                                              child: Padding(
                                                                                padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 5.0),
                                                                                child: SingleChildScrollView(
                                                                                  child: Column(
                                                                                    mainAxisSize: MainAxisSize.max,
                                                                                    children: [
                                                                                      Padding(
                                                                                        padding: EdgeInsetsDirectional.fromSTEB(0.0, 10.0, 0.0, 10.0),
                                                                                        child: Row(
                                                                                          mainAxisSize: MainAxisSize.max,
                                                                                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                                                          children: [
                                                                                            Align(
                                                                                              alignment: AlignmentDirectional(-1.0, 0.0),
                                                                                              child: Padding(
                                                                                                padding: EdgeInsetsDirectional.fromSTEB(20.0, 0.0, 20.0, 0.0),
                                                                                                child: Icon(
                                                                                                  Icons.arrow_drop_down_rounded,
                                                                                                  color: FlutterFlowTheme.of(context).primaryText,
                                                                                                  size: 24.0,
                                                                                                ),
                                                                                              ),
                                                                                            ),
                                                                                            Align(
                                                                                              alignment: AlignmentDirectional(0.0, 0.0),
                                                                                              child: Padding(
                                                                                                padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 20.0, 0.0),
                                                                                                child: Text(
                                                                                                  FFLocalizations.of(context).getText(
                                                                                                    'xakhrfr5' /* باقات ثريجي */,
                                                                                                  ),
                                                                                                  textAlign: TextAlign.center,
                                                                                                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                        fontFamily: 'Tajawal',
                                                                                                        fontSize: 16.0,
                                                                                                        letterSpacing: 0.0,
                                                                                                      ),
                                                                                                ),
                                                                                              ),
                                                                                            ),
                                                                                            Icon(
                                                                                              Icons.arrow_back,
                                                                                              color: FlutterFlowTheme.of(context).primaryText,
                                                                                              size: 0.0,
                                                                                            ),
                                                                                          ],
                                                                                        ),
                                                                                      ),
                                                                                      if (_model.nqury == 4)
                                                                                        StreamBuilder<List<SabafonRecord>>(
                                                                                          stream: querySabafonRecord(
                                                                                            queryBuilder: (sabafonRecord) => sabafonRecord
                                                                                                .where(
                                                                                                  'mainname',
                                                                                                  isEqualTo: 'باقات ثريجي',
                                                                                                )
                                                                                                .where(
                                                                                                  'type',
                                                                                                  isEqualTo: 'فوتره',
                                                                                                ),
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
                                                                                            List<SabafonRecord> listViewSabafonRecordList = snapshot.data!;

                                                                                            return ListView.builder(
                                                                                              padding: EdgeInsets.zero,
                                                                                              primary: false,
                                                                                              shrinkWrap: true,
                                                                                              scrollDirection: Axis.vertical,
                                                                                              itemCount: listViewSabafonRecordList.length,
                                                                                              itemBuilder: (context, listViewIndex) {
                                                                                                final listViewSabafonRecord = listViewSabafonRecordList[listViewIndex];
                                                                                                return Padding(
                                                                                                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 2.0, 0.0, 2.0),
                                                                                                  child: Container(
                                                                                                    width: double.infinity,
                                                                                                    height: 60.0,
                                                                                                    decoration: BoxDecoration(
                                                                                                      color: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                                      border: Border.all(
                                                                                                        color: Color(0xE97004DD),
                                                                                                      ),
                                                                                                    ),
                                                                                                    child: Row(
                                                                                                      mainAxisSize: MainAxisSize.max,
                                                                                                      children: [
                                                                                                        Align(
                                                                                                          alignment: AlignmentDirectional(0.0, 0.0),
                                                                                                          child: Padding(
                                                                                                            padding: EdgeInsetsDirectional.fromSTEB(5.0, 0.0, 5.0, 0.0),
                                                                                                            child: Container(
                                                                                                              width: 80.0,
                                                                                                              height: 20.0,
                                                                                                              decoration: BoxDecoration(
                                                                                                                color: Color(0xE90704DD),
                                                                                                                borderRadius: BorderRadius.circular(8.0),
                                                                                                              ),
                                                                                                              alignment: AlignmentDirectional(0.0, 0.0),
                                                                                                              child: Padding(
                                                                                                                padding: EdgeInsetsDirectional.fromSTEB(10.0, 0.0, 5.0, 0.0),
                                                                                                                child: Text(
                                                                                                                  listViewSabafonRecord.cost.toString(),
                                                                                                                  textAlign: TextAlign.center,
                                                                                                                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                                        fontFamily: 'Inter',
                                                                                                                        color: Color(0xFFF0F8FF),
                                                                                                                        letterSpacing: 0.0,
                                                                                                                      ),
                                                                                                                ),
                                                                                                              ),
                                                                                                            ),
                                                                                                          ),
                                                                                                        ),
                                                                                                        Expanded(
                                                                                                          child: Material(
                                                                                                            color: Colors.transparent,
                                                                                                            child: Theme(
                                                                                                              data: ThemeData(
                                                                                                                checkboxTheme: CheckboxThemeData(
                                                                                                                  visualDensity: VisualDensity.compact,
                                                                                                                  materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                                                                                                                ),
                                                                                                                unselectedWidgetColor: FlutterFlowTheme.of(context).alternate,
                                                                                                              ),
                                                                                                              child: CheckboxListTile(
                                                                                                                value: _model.checkboxListTileValueMap2[listViewSabafonRecord] ??= false,
                                                                                                                onChanged: (newValue) async {
                                                                                                                  safeSetState(() => _model.checkboxListTileValueMap2[listViewSabafonRecord] = newValue!);
                                                                                                                  if (newValue!) {
                                                                                                                    safeSetState(() {
                                                                                                                      _model.priceTextController?.text = listViewSabafonRecord.amount.toString();
                                                                                                                    });
                                                                                                                    safeSetState(() {
                                                                                                                      _model.subscriberTextController?.text = listViewSabafonRecord.id;
                                                                                                                    });
                                                                                                                    safeSetState(() {
                                                                                                                      _model.nameofferTextController?.text = listViewSabafonRecord.name;
                                                                                                                    });
                                                                                                                    safeSetState(() {
                                                                                                                      _model.coastTextController?.text = listViewSabafonRecord.cost.toString();
                                                                                                                    });
                                                                                                                    _model.numerref = random_data.randomInteger(2, 8);
                                                                                                                    safeSetState(() {});
                                                                                                                  } else {
                                                                                                                    safeSetState(() {
                                                                                                                      _model.nameofferTextController?.clear();
                                                                                                                      _model.priceTextController?.clear();
                                                                                                                      _model.coastTextController?.clear();
                                                                                                                    });
                                                                                                                  }
                                                                                                                },
                                                                                                                title: Text(
                                                                                                                  listViewSabafonRecord.name,
                                                                                                                  textAlign: TextAlign.center,
                                                                                                                  style: FlutterFlowTheme.of(context).titleLarge.override(
                                                                                                                        fontFamily: 'Inter',
                                                                                                                        fontSize: 14.0,
                                                                                                                        letterSpacing: 0.0,
                                                                                                                      ),
                                                                                                                ),
                                                                                                                tileColor: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                                                activeColor: Color(0xFFC9AE03),
                                                                                                                checkColor: FlutterFlowTheme.of(context).info,
                                                                                                                dense: false,
                                                                                                                controlAffinity: ListTileControlAffinity.trailing,
                                                                                                                contentPadding: EdgeInsetsDirectional.fromSTEB(12.0, 0.0, 12.0, 0.0),
                                                                                                                shape: RoundedRectangleBorder(
                                                                                                                  borderRadius: BorderRadius.circular(8.0),
                                                                                                                ),
                                                                                                              ),
                                                                                                            ),
                                                                                                          ),
                                                                                                        ),
                                                                                                      ],
                                                                                                    ),
                                                                                                  ),
                                                                                                );
                                                                                              },
                                                                                            );
                                                                                          },
                                                                                        ),
                                                                                    ],
                                                                                  ),
                                                                                ),
                                                                              ),
                                                                            ),
                                                                          ),
                                                                        ),
                                                                      ],
                                                                    ),
                                                                  ),
                                                                  Padding(
                                                                    padding: EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            0.0,
                                                                            0.0,
                                                                            0.0,
                                                                            10.0),
                                                                    child:
                                                                        SingleChildScrollView(
                                                                      child:
                                                                          Column(
                                                                        mainAxisSize:
                                                                            MainAxisSize.max,
                                                                        children: [
                                                                          Padding(
                                                                            padding: EdgeInsetsDirectional.fromSTEB(
                                                                                0.0,
                                                                                5.0,
                                                                                0.0,
                                                                                10.0),
                                                                            child:
                                                                                InkWell(
                                                                              splashColor: Colors.transparent,
                                                                              focusColor: Colors.transparent,
                                                                              hoverColor: Colors.transparent,
                                                                              highlightColor: Colors.transparent,
                                                                              onTap: () async {
                                                                                _model.nqury = 6;
                                                                                safeSetState(() {});
                                                                              },
                                                                              child: Container(
                                                                                width: 400.0,
                                                                                decoration: BoxDecoration(
                                                                                  color: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                  borderRadius: BorderRadius.circular(12.0),
                                                                                  border: Border.all(
                                                                                    color: _model.nqury == 6 ? Color(0xE91304DD) : FlutterFlowTheme.of(context).secondaryBackground,
                                                                                  ),
                                                                                ),
                                                                                child: Padding(
                                                                                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 5.0),
                                                                                  child: SingleChildScrollView(
                                                                                    child: Column(
                                                                                      mainAxisSize: MainAxisSize.max,
                                                                                      children: [
                                                                                        Padding(
                                                                                          padding: EdgeInsetsDirectional.fromSTEB(0.0, 10.0, 0.0, 10.0),
                                                                                          child: Row(
                                                                                            mainAxisSize: MainAxisSize.max,
                                                                                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                                                            children: [
                                                                                              Align(
                                                                                                alignment: AlignmentDirectional(-1.0, 0.0),
                                                                                                child: Padding(
                                                                                                  padding: EdgeInsetsDirectional.fromSTEB(20.0, 0.0, 20.0, 0.0),
                                                                                                  child: Icon(
                                                                                                    Icons.arrow_drop_down_rounded,
                                                                                                    color: FlutterFlowTheme.of(context).primaryText,
                                                                                                    size: 24.0,
                                                                                                  ),
                                                                                                ),
                                                                                              ),
                                                                                              Align(
                                                                                                alignment: AlignmentDirectional(0.0, 0.0),
                                                                                                child: Padding(
                                                                                                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 20.0, 0.0),
                                                                                                  child: Text(
                                                                                                    FFLocalizations.of(context).getText(
                                                                                                      'mmclx5iv' /* باقات سبأفون اخرى */,
                                                                                                    ),
                                                                                                    textAlign: TextAlign.center,
                                                                                                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                          fontFamily: 'Tajawal',
                                                                                                          fontSize: 16.0,
                                                                                                          letterSpacing: 0.0,
                                                                                                        ),
                                                                                                  ),
                                                                                                ),
                                                                                              ),
                                                                                              Icon(
                                                                                                Icons.arrow_back,
                                                                                                color: FlutterFlowTheme.of(context).primaryText,
                                                                                                size: 0.0,
                                                                                              ),
                                                                                            ],
                                                                                          ),
                                                                                        ),
                                                                                        if (_model.nqury == 6)
                                                                                          Padding(
                                                                                            padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 5.0),
                                                                                            child: StreamBuilder<List<SabafonRecord>>(
                                                                                              stream: querySabafonRecord(
                                                                                                queryBuilder: (sabafonRecord) => sabafonRecord
                                                                                                    .where(
                                                                                                      'mainname',
                                                                                                      isEqualTo: 'باقات سبأفون اخرى',
                                                                                                    )
                                                                                                    .where(
                                                                                                      'type',
                                                                                                      isEqualTo: 'فوتره',
                                                                                                    ),
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
                                                                                                List<SabafonRecord> listViewSabafonRecordList = snapshot.data!;

                                                                                                return ListView.builder(
                                                                                                  padding: EdgeInsets.zero,
                                                                                                  primary: false,
                                                                                                  shrinkWrap: true,
                                                                                                  scrollDirection: Axis.vertical,
                                                                                                  itemCount: listViewSabafonRecordList.length,
                                                                                                  itemBuilder: (context, listViewIndex) {
                                                                                                    final listViewSabafonRecord = listViewSabafonRecordList[listViewIndex];
                                                                                                    return Padding(
                                                                                                      padding: EdgeInsetsDirectional.fromSTEB(0.0, 2.0, 0.0, 2.0),
                                                                                                      child: Container(
                                                                                                        width: double.infinity,
                                                                                                        height: 60.0,
                                                                                                        decoration: BoxDecoration(
                                                                                                          color: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                                          border: Border.all(
                                                                                                            color: Color(0xE97004DD),
                                                                                                          ),
                                                                                                        ),
                                                                                                        child: Row(
                                                                                                          mainAxisSize: MainAxisSize.max,
                                                                                                          children: [
                                                                                                            Align(
                                                                                                              alignment: AlignmentDirectional(0.0, 0.0),
                                                                                                              child: Padding(
                                                                                                                padding: EdgeInsetsDirectional.fromSTEB(5.0, 0.0, 5.0, 0.0),
                                                                                                                child: Container(
                                                                                                                  width: 80.0,
                                                                                                                  height: 20.0,
                                                                                                                  decoration: BoxDecoration(
                                                                                                                    color: Color(0xE90704DD),
                                                                                                                    borderRadius: BorderRadius.circular(8.0),
                                                                                                                  ),
                                                                                                                  alignment: AlignmentDirectional(0.0, 0.0),
                                                                                                                  child: Padding(
                                                                                                                    padding: EdgeInsetsDirectional.fromSTEB(10.0, 0.0, 5.0, 0.0),
                                                                                                                    child: Text(
                                                                                                                      listViewSabafonRecord.cost.toString(),
                                                                                                                      textAlign: TextAlign.center,
                                                                                                                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                                            fontFamily: 'Inter',
                                                                                                                            color: Color(0xFFF0F8FF),
                                                                                                                            letterSpacing: 0.0,
                                                                                                                          ),
                                                                                                                    ),
                                                                                                                  ),
                                                                                                                ),
                                                                                                              ),
                                                                                                            ),
                                                                                                            Expanded(
                                                                                                              child: Material(
                                                                                                                color: Colors.transparent,
                                                                                                                child: Theme(
                                                                                                                  data: ThemeData(
                                                                                                                    checkboxTheme: CheckboxThemeData(
                                                                                                                      visualDensity: VisualDensity.compact,
                                                                                                                      materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                                                                                                                    ),
                                                                                                                    unselectedWidgetColor: FlutterFlowTheme.of(context).alternate,
                                                                                                                  ),
                                                                                                                  child: CheckboxListTile(
                                                                                                                    value: _model.checkboxListTileValueMap3[listViewSabafonRecord] ??= false,
                                                                                                                    onChanged: (newValue) async {
                                                                                                                      safeSetState(() => _model.checkboxListTileValueMap3[listViewSabafonRecord] = newValue!);
                                                                                                                      if (newValue!) {
                                                                                                                        safeSetState(() {
                                                                                                                          _model.priceTextController?.text = listViewSabafonRecord.amount.toString();
                                                                                                                        });
                                                                                                                        safeSetState(() {
                                                                                                                          _model.subscriberTextController?.text = listViewSabafonRecord.id;
                                                                                                                        });
                                                                                                                        safeSetState(() {
                                                                                                                          _model.nameofferTextController?.text = listViewSabafonRecord.name;
                                                                                                                        });
                                                                                                                        safeSetState(() {
                                                                                                                          _model.coastTextController?.text = listViewSabafonRecord.cost.toString();
                                                                                                                        });
                                                                                                                        _model.numerref = random_data.randomInteger(2, 8);
                                                                                                                        safeSetState(() {});
                                                                                                                      } else {
                                                                                                                        safeSetState(() {
                                                                                                                          _model.nameofferTextController?.clear();
                                                                                                                          _model.priceTextController?.clear();
                                                                                                                          _model.coastTextController?.clear();
                                                                                                                        });
                                                                                                                      }
                                                                                                                    },
                                                                                                                    title: Text(
                                                                                                                      listViewSabafonRecord.name,
                                                                                                                      textAlign: TextAlign.center,
                                                                                                                      style: FlutterFlowTheme.of(context).titleLarge.override(
                                                                                                                            fontFamily: 'Inter',
                                                                                                                            fontSize: 14.0,
                                                                                                                            letterSpacing: 0.0,
                                                                                                                          ),
                                                                                                                    ),
                                                                                                                    tileColor: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                                                    activeColor: Color(0xFFC9AE03),
                                                                                                                    checkColor: FlutterFlowTheme.of(context).info,
                                                                                                                    dense: false,
                                                                                                                    controlAffinity: ListTileControlAffinity.trailing,
                                                                                                                    contentPadding: EdgeInsetsDirectional.fromSTEB(12.0, 0.0, 12.0, 0.0),
                                                                                                                    shape: RoundedRectangleBorder(
                                                                                                                      borderRadius: BorderRadius.circular(8.0),
                                                                                                                    ),
                                                                                                                  ),
                                                                                                                ),
                                                                                                              ),
                                                                                                            ),
                                                                                                          ],
                                                                                                        ),
                                                                                                      ),
                                                                                                    );
                                                                                                  },
                                                                                                );
                                                                                              },
                                                                                            ),
                                                                                          ),
                                                                                      ],
                                                                                    ),
                                                                                  ),
                                                                                ),
                                                                              ),
                                                                            ),
                                                                          ),
                                                                        ],
                                                                      ),
                                                                    ),
                                                                  ),
                                                                ],
                                                              ),
                                                            ),
                                                          ],
                                                        ),
                                                      ),
                                                      Column(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        children: [
                                                          Padding(
                                                            padding:
                                                                EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        0.0,
                                                                        10.0,
                                                                        0.0,
                                                                        10.0),
                                                            child: Container(
                                                              width: 300.0,
                                                              child:
                                                                  TextFormField(
                                                                controller: _model
                                                                    .amontTextController,
                                                                focusNode: _model
                                                                    .amontFocusNode,
                                                                autofocus: true,
                                                                obscureText:
                                                                    false,
                                                                decoration:
                                                                    InputDecoration(
                                                                  isDense: true,
                                                                  labelStyle: FlutterFlowTheme.of(
                                                                          context)
                                                                      .labelMedium
                                                                      .override(
                                                                        fontFamily:
                                                                            'Inter',
                                                                        letterSpacing:
                                                                            0.0,
                                                                      ),
                                                                  hintText: FFLocalizations.of(
                                                                          context)
                                                                      .getText(
                                                                    'ea55xw33' /* المبلغ */,
                                                                  ),
                                                                  hintStyle: FlutterFlowTheme.of(
                                                                          context)
                                                                      .labelMedium
                                                                      .override(
                                                                        fontFamily:
                                                                            'Inter',
                                                                        letterSpacing:
                                                                            0.0,
                                                                      ),
                                                                  enabledBorder:
                                                                      OutlineInputBorder(
                                                                    borderSide:
                                                                        BorderSide(
                                                                      color: Color(
                                                                          0x00000000),
                                                                      width:
                                                                          1.0,
                                                                    ),
                                                                    borderRadius:
                                                                        BorderRadius.circular(
                                                                            8.0),
                                                                  ),
                                                                  focusedBorder:
                                                                      OutlineInputBorder(
                                                                    borderSide:
                                                                        BorderSide(
                                                                      color: Color(
                                                                          0x00000000),
                                                                      width:
                                                                          1.0,
                                                                    ),
                                                                    borderRadius:
                                                                        BorderRadius.circular(
                                                                            8.0),
                                                                  ),
                                                                  errorBorder:
                                                                      OutlineInputBorder(
                                                                    borderSide:
                                                                        BorderSide(
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .error,
                                                                      width:
                                                                          1.0,
                                                                    ),
                                                                    borderRadius:
                                                                        BorderRadius.circular(
                                                                            8.0),
                                                                  ),
                                                                  focusedErrorBorder:
                                                                      OutlineInputBorder(
                                                                    borderSide:
                                                                        BorderSide(
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .error,
                                                                      width:
                                                                          1.0,
                                                                    ),
                                                                    borderRadius:
                                                                        BorderRadius.circular(
                                                                            8.0),
                                                                  ),
                                                                  filled: true,
                                                                  fillColor: FlutterFlowTheme.of(
                                                                          context)
                                                                      .secondaryBackground,
                                                                ),
                                                                style: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMedium
                                                                    .override(
                                                                      fontFamily:
                                                                          'Inter',
                                                                      letterSpacing:
                                                                          0.0,
                                                                    ),
                                                                textAlign:
                                                                    TextAlign
                                                                        .center,
                                                                keyboardType:
                                                                    TextInputType
                                                                        .number,
                                                                cursorColor:
                                                                    FlutterFlowTheme.of(
                                                                            context)
                                                                        .primaryText,
                                                                validator: _model
                                                                    .amontTextControllerValidator
                                                                    .asValidator(
                                                                        context),
                                                              ),
                                                            ),
                                                          ),
                                                          Padding(
                                                            padding:
                                                                EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        0.0,
                                                                        10.0,
                                                                        0.0,
                                                                        0.0),
                                                            child:
                                                                FFButtonWidget(
                                                              onPressed:
                                                                  () async {
                                                                if (_model.formKey
                                                                            .currentState ==
                                                                        null ||
                                                                    !_model
                                                                        .formKey
                                                                        .currentState!
                                                                        .validate()) {
                                                                  return;
                                                                }
                                                                await showModalBottomSheet(
                                                                  isScrollControlled:
                                                                      true,
                                                                  backgroundColor:
                                                                      FlutterFlowTheme.of(
                                                                              context)
                                                                          .secondaryBackground,
                                                                  context:
                                                                      context,
                                                                  builder:
                                                                      (context) {
                                                                    return WebViewAware(
                                                                      child:
                                                                          GestureDetector(
                                                                        onTap: () =>
                                                                            FocusScope.of(context).unfocus(),
                                                                        child:
                                                                            Padding(
                                                                          padding:
                                                                              MediaQuery.viewInsetsOf(context),
                                                                          child:
                                                                              Container(
                                                                            height:
                                                                                400.0,
                                                                            child:
                                                                                SurerasidWidget(
                                                                              ac: 7100,
                                                                              sc: 42101,
                                                                              sno: _model.textController9.text,
                                                                              sac: '0',
                                                                              ofernamer: 'مبلغ',
                                                                              mt: 1,
                                                                              numberref: int.tryParse(_model.numberrefTextController.text),
                                                                              amt: double.tryParse(_model.amontTextController.text),
                                                                              coast: double.tryParse(_model.amontTextController.text),
                                                                            ),
                                                                          ),
                                                                        ),
                                                                      ),
                                                                    );
                                                                  },
                                                                ).then((value) =>
                                                                    safeSetState(
                                                                        () {}));
                                                              },
                                                              text: FFLocalizations
                                                                      .of(context)
                                                                  .getText(
                                                                '7tsmsa5x' /* متابعة  */,
                                                              ),
                                                              options:
                                                                  FFButtonOptions(
                                                                width: 300.0,
                                                                height: 40.0,
                                                                padding: EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        24.0,
                                                                        0.0,
                                                                        24.0,
                                                                        0.0),
                                                                iconPadding:
                                                                    EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            0.0,
                                                                            0.0,
                                                                            0.0,
                                                                            0.0),
                                                                color: Color(
                                                                    0xFF008BB6),
                                                                textStyle: FlutterFlowTheme.of(
                                                                        context)
                                                                    .titleSmall
                                                                    .override(
                                                                      fontFamily:
                                                                          'Tajawal',
                                                                      color: Colors
                                                                          .white,
                                                                      letterSpacing:
                                                                          0.0,
                                                                    ),
                                                                elevation: 3.0,
                                                                borderSide:
                                                                    BorderSide(
                                                                  color: Colors
                                                                      .transparent,
                                                                  width: 1.0,
                                                                ),
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .only(
                                                                  bottomLeft: Radius
                                                                      .circular(
                                                                          0.0),
                                                                  bottomRight: Radius
                                                                      .circular(
                                                                          0.0),
                                                                  topLeft: Radius
                                                                      .circular(
                                                                          10.0),
                                                                  topRight: Radius
                                                                      .circular(
                                                                          10.0),
                                                                ),
                                                              ),
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
                                      ),
                                    if (_model.choiceChipsValue == 'دفع مسبق')
                                      Align(
                                        alignment:
                                            AlignmentDirectional(0.0, 0.0),
                                        child: Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 8.0, 0.0, 0.0),
                                          child: Container(
                                            width: 400.0,
                                            height: 400.0,
                                            decoration: BoxDecoration(),
                                            child: Column(
                                              children: [
                                                Align(
                                                  alignment: Alignment(0.0, 0),
                                                  child:
                                                      FlutterFlowButtonTabBar(
                                                    useToggleButtonStyle: true,
                                                    labelStyle: FlutterFlowTheme
                                                            .of(context)
                                                        .titleMedium
                                                        .override(
                                                          fontFamily: 'Tajawal',
                                                          letterSpacing: 0.0,
                                                        ),
                                                    unselectedLabelStyle:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .titleMedium
                                                            .override(
                                                              fontFamily:
                                                                  'Inter',
                                                              letterSpacing:
                                                                  0.0,
                                                            ),
                                                    labelColor:
                                                        Color(0xFFE8F4FD),
                                                    unselectedLabelColor:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .secondaryText,
                                                    backgroundColor:
                                                        Color(0xE9330FFD),
                                                    unselectedBackgroundColor:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .alternate,
                                                    borderColor:
                                                        Color(0xE92107FF),
                                                    unselectedBorderColor:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .alternate,
                                                    borderWidth: 2.0,
                                                    borderRadius: 8.0,
                                                    elevation: 0.0,
                                                    buttonMargin:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(8.0, 0.0,
                                                                8.0, 0.0),
                                                    padding:
                                                        EdgeInsets.all(2.0),
                                                    tabs: [
                                                      Tab(
                                                        text:
                                                            FFLocalizations.of(
                                                                    context)
                                                                .getText(
                                                          'yltq3otr' /* باقات */,
                                                        ),
                                                      ),
                                                      Tab(
                                                        text:
                                                            FFLocalizations.of(
                                                                    context)
                                                                .getText(
                                                          '53uxmxi0' /* وحدات */,
                                                        ),
                                                      ),
                                                    ],
                                                    controller: _model
                                                        .tabBarController2,
                                                    onTap: (i) async {
                                                      [
                                                        () async {
                                                          safeSetState(() {
                                                            _model
                                                                .actionTextController
                                                                ?.text = '7200';
                                                          });
                                                          _model.subscribertype =
                                                              '1';
                                                          safeSetState(() {});
                                                          _model.button = 20;
                                                          safeSetState(() {});
                                                        },
                                                        () async {
                                                          safeSetState(() {
                                                            _model
                                                                .actionTextController
                                                                ?.text = '7100';
                                                          });
                                                          _model.button = 21;
                                                          safeSetState(() {});
                                                        }
                                                      ][i]();
                                                    },
                                                  ),
                                                ),
                                                Expanded(
                                                  child: TabBarView(
                                                    controller: _model
                                                        .tabBarController2,
                                                    physics:
                                                        const NeverScrollableScrollPhysics(),
                                                    children: [
                                                      SingleChildScrollView(
                                                        child: Column(
                                                          mainAxisSize:
                                                              MainAxisSize.max,
                                                          children: [
                                                            SingleChildScrollView(
                                                              child: Column(
                                                                mainAxisSize:
                                                                    MainAxisSize
                                                                        .max,
                                                                children: [
                                                                  SingleChildScrollView(
                                                                    child:
                                                                        Column(
                                                                      mainAxisSize:
                                                                          MainAxisSize
                                                                              .max,
                                                                      children: [
                                                                        Padding(
                                                                          padding: EdgeInsetsDirectional.fromSTEB(
                                                                              0.0,
                                                                              5.0,
                                                                              0.0,
                                                                              5.0),
                                                                          child:
                                                                              InkWell(
                                                                            splashColor:
                                                                                Colors.transparent,
                                                                            focusColor:
                                                                                Colors.transparent,
                                                                            hoverColor:
                                                                                Colors.transparent,
                                                                            highlightColor:
                                                                                Colors.transparent,
                                                                            onTap:
                                                                                () async {
                                                                              _model.nqury = 8;
                                                                              safeSetState(() {});
                                                                            },
                                                                            child:
                                                                                Container(
                                                                              width: 400.0,
                                                                              decoration: BoxDecoration(
                                                                                color: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                borderRadius: BorderRadius.circular(12.0),
                                                                                border: Border.all(
                                                                                  color: _model.nqury == 8 ? Color(0xE91304DD) : FlutterFlowTheme.of(context).secondaryBackground,
                                                                                ),
                                                                              ),
                                                                              child: Column(
                                                                                mainAxisSize: MainAxisSize.max,
                                                                                children: [
                                                                                  Padding(
                                                                                    padding: EdgeInsetsDirectional.fromSTEB(0.0, 10.0, 0.0, 10.0),
                                                                                    child: Row(
                                                                                      mainAxisSize: MainAxisSize.max,
                                                                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                                                      children: [
                                                                                        Align(
                                                                                          alignment: AlignmentDirectional(-1.0, 0.0),
                                                                                          child: Padding(
                                                                                            padding: EdgeInsetsDirectional.fromSTEB(20.0, 0.0, 20.0, 0.0),
                                                                                            child: Icon(
                                                                                              Icons.arrow_drop_down_rounded,
                                                                                              color: FlutterFlowTheme.of(context).primaryText,
                                                                                              size: 24.0,
                                                                                            ),
                                                                                          ),
                                                                                        ),
                                                                                        Align(
                                                                                          alignment: AlignmentDirectional(0.0, 0.0),
                                                                                          child: Padding(
                                                                                            padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 20.0, 0.0),
                                                                                            child: Text(
                                                                                              FFLocalizations.of(context).getText(
                                                                                                '8yfxlbwr' /* باقات فورجي */,
                                                                                              ),
                                                                                              textAlign: TextAlign.center,
                                                                                              style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                    fontFamily: 'Tajawal',
                                                                                                    fontSize: 16.0,
                                                                                                    letterSpacing: 0.0,
                                                                                                  ),
                                                                                            ),
                                                                                          ),
                                                                                        ),
                                                                                        Icon(
                                                                                          Icons.arrow_back,
                                                                                          color: FlutterFlowTheme.of(context).primaryText,
                                                                                          size: 0.0,
                                                                                        ),
                                                                                      ],
                                                                                    ),
                                                                                  ),
                                                                                  if (_model.nqury == 8)
                                                                                    StreamBuilder<List<SabafonRecord>>(
                                                                                      stream: querySabafonRecord(
                                                                                        queryBuilder: (sabafonRecord) => sabafonRecord
                                                                                            .where(
                                                                                              'mainname',
                                                                                              isEqualTo: 'باقات فورجي',
                                                                                            )
                                                                                            .where(
                                                                                              'type',
                                                                                              isEqualTo: 'دفع مسبق',
                                                                                            ),
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
                                                                                        List<SabafonRecord> listViewSabafonRecordList = snapshot.data!;

                                                                                        return ListView.builder(
                                                                                          padding: EdgeInsets.zero,
                                                                                          primary: false,
                                                                                          shrinkWrap: true,
                                                                                          scrollDirection: Axis.vertical,
                                                                                          itemCount: listViewSabafonRecordList.length,
                                                                                          itemBuilder: (context, listViewIndex) {
                                                                                            final listViewSabafonRecord = listViewSabafonRecordList[listViewIndex];
                                                                                            return Padding(
                                                                                              padding: EdgeInsetsDirectional.fromSTEB(0.0, 2.0, 0.0, 2.0),
                                                                                              child: Container(
                                                                                                width: double.infinity,
                                                                                                height: 60.0,
                                                                                                decoration: BoxDecoration(
                                                                                                  color: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                                  border: Border.all(
                                                                                                    color: Color(0xE97004DD),
                                                                                                  ),
                                                                                                ),
                                                                                                child: Row(
                                                                                                  mainAxisSize: MainAxisSize.max,
                                                                                                  children: [
                                                                                                    Align(
                                                                                                      alignment: AlignmentDirectional(0.0, 0.0),
                                                                                                      child: Padding(
                                                                                                        padding: EdgeInsetsDirectional.fromSTEB(5.0, 0.0, 5.0, 0.0),
                                                                                                        child: Container(
                                                                                                          width: 80.0,
                                                                                                          height: 20.0,
                                                                                                          decoration: BoxDecoration(
                                                                                                            color: Color(0xE90704DD),
                                                                                                            borderRadius: BorderRadius.circular(8.0),
                                                                                                          ),
                                                                                                          alignment: AlignmentDirectional(0.0, 0.0),
                                                                                                          child: Padding(
                                                                                                            padding: EdgeInsetsDirectional.fromSTEB(10.0, 0.0, 5.0, 0.0),
                                                                                                            child: Text(
                                                                                                              listViewSabafonRecord.cost.toString(),
                                                                                                              textAlign: TextAlign.center,
                                                                                                              style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                                    fontFamily: 'Inter',
                                                                                                                    color: Color(0xFFF0F8FF),
                                                                                                                    letterSpacing: 0.0,
                                                                                                                  ),
                                                                                                            ),
                                                                                                          ),
                                                                                                        ),
                                                                                                      ),
                                                                                                    ),
                                                                                                    Expanded(
                                                                                                      child: Material(
                                                                                                        color: Colors.transparent,
                                                                                                        child: Theme(
                                                                                                          data: ThemeData(
                                                                                                            checkboxTheme: CheckboxThemeData(
                                                                                                              visualDensity: VisualDensity.compact,
                                                                                                              materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                                                                                                            ),
                                                                                                            unselectedWidgetColor: FlutterFlowTheme.of(context).alternate,
                                                                                                          ),
                                                                                                          child: CheckboxListTile(
                                                                                                            value: _model.checkboxListTileValueMap4[listViewSabafonRecord] ??= false,
                                                                                                            onChanged: (newValue) async {
                                                                                                              safeSetState(() => _model.checkboxListTileValueMap4[listViewSabafonRecord] = newValue!);
                                                                                                              if (newValue!) {
                                                                                                                safeSetState(() {
                                                                                                                  _model.priceTextController?.text = listViewSabafonRecord.amount.toString();
                                                                                                                });
                                                                                                                safeSetState(() {
                                                                                                                  _model.subscriberTextController?.text = listViewSabafonRecord.id;
                                                                                                                });
                                                                                                                safeSetState(() {
                                                                                                                  _model.nameofferTextController?.text = listViewSabafonRecord.name;
                                                                                                                });
                                                                                                                safeSetState(() {
                                                                                                                  _model.coastTextController?.text = listViewSabafonRecord.cost.toString();
                                                                                                                });
                                                                                                                _model.numerref = random_data.randomInteger(2, 8);
                                                                                                                safeSetState(() {});
                                                                                                              } else {
                                                                                                                safeSetState(() {
                                                                                                                  _model.nameofferTextController?.clear();
                                                                                                                  _model.priceTextController?.clear();
                                                                                                                  _model.coastTextController?.clear();
                                                                                                                });
                                                                                                              }
                                                                                                            },
                                                                                                            title: Text(
                                                                                                              listViewSabafonRecord.name,
                                                                                                              textAlign: TextAlign.center,
                                                                                                              style: FlutterFlowTheme.of(context).titleLarge.override(
                                                                                                                    fontFamily: 'Inter',
                                                                                                                    fontSize: 14.0,
                                                                                                                    letterSpacing: 0.0,
                                                                                                                  ),
                                                                                                            ),
                                                                                                            tileColor: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                                            activeColor: Color(0xFF2603C9),
                                                                                                            checkColor: FlutterFlowTheme.of(context).info,
                                                                                                            dense: false,
                                                                                                            controlAffinity: ListTileControlAffinity.trailing,
                                                                                                            contentPadding: EdgeInsetsDirectional.fromSTEB(12.0, 0.0, 12.0, 0.0),
                                                                                                            shape: RoundedRectangleBorder(
                                                                                                              borderRadius: BorderRadius.circular(8.0),
                                                                                                            ),
                                                                                                          ),
                                                                                                        ),
                                                                                                      ),
                                                                                                    ),
                                                                                                  ],
                                                                                                ),
                                                                                              ),
                                                                                            );
                                                                                          },
                                                                                        );
                                                                                      },
                                                                                    ),
                                                                                ],
                                                                              ),
                                                                            ),
                                                                          ),
                                                                        ),
                                                                      ],
                                                                    ),
                                                                  ),
                                                                  SingleChildScrollView(
                                                                    child:
                                                                        Column(
                                                                      mainAxisSize:
                                                                          MainAxisSize
                                                                              .max,
                                                                      children: [
                                                                        Padding(
                                                                          padding: EdgeInsetsDirectional.fromSTEB(
                                                                              0.0,
                                                                              5.0,
                                                                              0.0,
                                                                              5.0),
                                                                          child:
                                                                              InkWell(
                                                                            splashColor:
                                                                                Colors.transparent,
                                                                            focusColor:
                                                                                Colors.transparent,
                                                                            hoverColor:
                                                                                Colors.transparent,
                                                                            highlightColor:
                                                                                Colors.transparent,
                                                                            onTap:
                                                                                () async {
                                                                              _model.nqury = 10;
                                                                              safeSetState(() {});
                                                                            },
                                                                            child:
                                                                                Container(
                                                                              width: 400.0,
                                                                              decoration: BoxDecoration(
                                                                                color: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                borderRadius: BorderRadius.circular(12.0),
                                                                                border: Border.all(
                                                                                  color: _model.nqury == 10 ? Color(0xE91304DD) : FlutterFlowTheme.of(context).secondaryBackground,
                                                                                ),
                                                                              ),
                                                                              child: Column(
                                                                                mainAxisSize: MainAxisSize.max,
                                                                                children: [
                                                                                  Padding(
                                                                                    padding: EdgeInsetsDirectional.fromSTEB(0.0, 10.0, 0.0, 10.0),
                                                                                    child: Row(
                                                                                      mainAxisSize: MainAxisSize.max,
                                                                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                                                      children: [
                                                                                        Align(
                                                                                          alignment: AlignmentDirectional(-1.0, 0.0),
                                                                                          child: Padding(
                                                                                            padding: EdgeInsetsDirectional.fromSTEB(20.0, 0.0, 20.0, 0.0),
                                                                                            child: Icon(
                                                                                              Icons.arrow_drop_down_rounded,
                                                                                              color: FlutterFlowTheme.of(context).primaryText,
                                                                                              size: 24.0,
                                                                                            ),
                                                                                          ),
                                                                                        ),
                                                                                        Align(
                                                                                          alignment: AlignmentDirectional(0.0, 0.0),
                                                                                          child: Padding(
                                                                                            padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 20.0, 0.0),
                                                                                            child: Text(
                                                                                              FFLocalizations.of(context).getText(
                                                                                                'u9y1xojg' /* باقات ثريجي */,
                                                                                              ),
                                                                                              textAlign: TextAlign.center,
                                                                                              style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                    fontFamily: 'Tajawal',
                                                                                                    fontSize: 16.0,
                                                                                                    letterSpacing: 0.0,
                                                                                                  ),
                                                                                            ),
                                                                                          ),
                                                                                        ),
                                                                                        Icon(
                                                                                          Icons.arrow_back,
                                                                                          color: FlutterFlowTheme.of(context).primaryText,
                                                                                          size: 0.0,
                                                                                        ),
                                                                                      ],
                                                                                    ),
                                                                                  ),
                                                                                  if (_model.nqury == 10)
                                                                                    StreamBuilder<List<SabafonRecord>>(
                                                                                      stream: querySabafonRecord(
                                                                                        queryBuilder: (sabafonRecord) => sabafonRecord
                                                                                            .where(
                                                                                              'mainname',
                                                                                              isEqualTo: 'باقات سبأفون اخرى',
                                                                                            )
                                                                                            .where(
                                                                                              'type',
                                                                                              isEqualTo: 'دفع مسبق',
                                                                                            ),
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
                                                                                        List<SabafonRecord> listViewSabafonRecordList = snapshot.data!;

                                                                                        return ListView.builder(
                                                                                          padding: EdgeInsets.zero,
                                                                                          primary: false,
                                                                                          shrinkWrap: true,
                                                                                          scrollDirection: Axis.vertical,
                                                                                          itemCount: listViewSabafonRecordList.length,
                                                                                          itemBuilder: (context, listViewIndex) {
                                                                                            final listViewSabafonRecord = listViewSabafonRecordList[listViewIndex];
                                                                                            return Padding(
                                                                                              padding: EdgeInsetsDirectional.fromSTEB(0.0, 2.0, 0.0, 2.0),
                                                                                              child: Container(
                                                                                                width: double.infinity,
                                                                                                height: 60.0,
                                                                                                decoration: BoxDecoration(
                                                                                                  color: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                                  border: Border.all(
                                                                                                    color: Color(0xE97004DD),
                                                                                                  ),
                                                                                                ),
                                                                                                child: Row(
                                                                                                  mainAxisSize: MainAxisSize.max,
                                                                                                  children: [
                                                                                                    Align(
                                                                                                      alignment: AlignmentDirectional(0.0, 0.0),
                                                                                                      child: Padding(
                                                                                                        padding: EdgeInsetsDirectional.fromSTEB(5.0, 0.0, 5.0, 0.0),
                                                                                                        child: Container(
                                                                                                          width: 80.0,
                                                                                                          height: 20.0,
                                                                                                          decoration: BoxDecoration(
                                                                                                            color: Color(0xE90704DD),
                                                                                                            borderRadius: BorderRadius.circular(8.0),
                                                                                                          ),
                                                                                                          alignment: AlignmentDirectional(0.0, 0.0),
                                                                                                          child: Padding(
                                                                                                            padding: EdgeInsetsDirectional.fromSTEB(10.0, 0.0, 5.0, 0.0),
                                                                                                            child: Text(
                                                                                                              listViewSabafonRecord.cost.toString(),
                                                                                                              textAlign: TextAlign.center,
                                                                                                              style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                                    fontFamily: 'Inter',
                                                                                                                    color: Color(0xFFF0F8FF),
                                                                                                                    letterSpacing: 0.0,
                                                                                                                  ),
                                                                                                            ),
                                                                                                          ),
                                                                                                        ),
                                                                                                      ),
                                                                                                    ),
                                                                                                    Expanded(
                                                                                                      child: Material(
                                                                                                        color: Colors.transparent,
                                                                                                        child: Theme(
                                                                                                          data: ThemeData(
                                                                                                            checkboxTheme: CheckboxThemeData(
                                                                                                              visualDensity: VisualDensity.compact,
                                                                                                              materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                                                                                                            ),
                                                                                                            unselectedWidgetColor: FlutterFlowTheme.of(context).alternate,
                                                                                                          ),
                                                                                                          child: CheckboxListTile(
                                                                                                            value: _model.checkboxListTileValueMap5[listViewSabafonRecord] ??= false,
                                                                                                            onChanged: (newValue) async {
                                                                                                              safeSetState(() => _model.checkboxListTileValueMap5[listViewSabafonRecord] = newValue!);
                                                                                                              if (newValue!) {
                                                                                                                safeSetState(() {
                                                                                                                  _model.priceTextController?.text = listViewSabafonRecord.amount.toString();
                                                                                                                });
                                                                                                                safeSetState(() {
                                                                                                                  _model.subscriberTextController?.text = listViewSabafonRecord.id;
                                                                                                                });
                                                                                                                safeSetState(() {
                                                                                                                  _model.nameofferTextController?.text = listViewSabafonRecord.name;
                                                                                                                });
                                                                                                                safeSetState(() {
                                                                                                                  _model.coastTextController?.text = listViewSabafonRecord.cost.toString();
                                                                                                                });
                                                                                                                _model.numerref = random_data.randomInteger(2, 8);
                                                                                                                safeSetState(() {});
                                                                                                              } else {
                                                                                                                safeSetState(() {
                                                                                                                  _model.nameofferTextController?.clear();
                                                                                                                  _model.priceTextController?.clear();
                                                                                                                  _model.coastTextController?.clear();
                                                                                                                });
                                                                                                              }
                                                                                                            },
                                                                                                            title: Text(
                                                                                                              listViewSabafonRecord.name,
                                                                                                              textAlign: TextAlign.center,
                                                                                                              style: FlutterFlowTheme.of(context).titleLarge.override(
                                                                                                                    fontFamily: 'Inter',
                                                                                                                    fontSize: 14.0,
                                                                                                                    letterSpacing: 0.0,
                                                                                                                  ),
                                                                                                            ),
                                                                                                            tileColor: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                                            activeColor: Color(0xFF2603C9),
                                                                                                            checkColor: FlutterFlowTheme.of(context).info,
                                                                                                            dense: false,
                                                                                                            controlAffinity: ListTileControlAffinity.trailing,
                                                                                                            contentPadding: EdgeInsetsDirectional.fromSTEB(12.0, 0.0, 12.0, 0.0),
                                                                                                            shape: RoundedRectangleBorder(
                                                                                                              borderRadius: BorderRadius.circular(8.0),
                                                                                                            ),
                                                                                                          ),
                                                                                                        ),
                                                                                                      ),
                                                                                                    ),
                                                                                                  ],
                                                                                                ),
                                                                                              ),
                                                                                            );
                                                                                          },
                                                                                        );
                                                                                      },
                                                                                    ),
                                                                                ],
                                                                              ),
                                                                            ),
                                                                          ),
                                                                        ),
                                                                      ],
                                                                    ),
                                                                  ),
                                                                  SingleChildScrollView(
                                                                    child:
                                                                        Column(
                                                                      mainAxisSize:
                                                                          MainAxisSize
                                                                              .max,
                                                                      children: [
                                                                        Padding(
                                                                          padding: EdgeInsetsDirectional.fromSTEB(
                                                                              0.0,
                                                                              5.0,
                                                                              0.0,
                                                                              5.0),
                                                                          child:
                                                                              InkWell(
                                                                            splashColor:
                                                                                Colors.transparent,
                                                                            focusColor:
                                                                                Colors.transparent,
                                                                            hoverColor:
                                                                                Colors.transparent,
                                                                            highlightColor:
                                                                                Colors.transparent,
                                                                            onTap:
                                                                                () async {
                                                                              _model.nqury = 11;
                                                                              safeSetState(() {});
                                                                            },
                                                                            child:
                                                                                Container(
                                                                              width: 400.0,
                                                                              decoration: BoxDecoration(
                                                                                color: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                borderRadius: BorderRadius.circular(12.0),
                                                                                border: Border.all(
                                                                                  color: _model.nqury == 11 ? Color(0xE91304DD) : FlutterFlowTheme.of(context).secondaryBackground,
                                                                                ),
                                                                              ),
                                                                              child: Column(
                                                                                mainAxisSize: MainAxisSize.max,
                                                                                children: [
                                                                                  Padding(
                                                                                    padding: EdgeInsetsDirectional.fromSTEB(0.0, 10.0, 0.0, 10.0),
                                                                                    child: Row(
                                                                                      mainAxisSize: MainAxisSize.max,
                                                                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                                                      children: [
                                                                                        Align(
                                                                                          alignment: AlignmentDirectional(-1.0, 0.0),
                                                                                          child: Padding(
                                                                                            padding: EdgeInsetsDirectional.fromSTEB(20.0, 0.0, 20.0, 0.0),
                                                                                            child: Icon(
                                                                                              Icons.arrow_drop_down_rounded,
                                                                                              color: FlutterFlowTheme.of(context).primaryText,
                                                                                              size: 24.0,
                                                                                            ),
                                                                                          ),
                                                                                        ),
                                                                                        Align(
                                                                                          alignment: AlignmentDirectional(0.0, 0.0),
                                                                                          child: Padding(
                                                                                            padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 20.0, 0.0),
                                                                                            child: Text(
                                                                                              FFLocalizations.of(context).getText(
                                                                                                'iwesi3un' /* باقات سبأفون اخرى */,
                                                                                              ),
                                                                                              textAlign: TextAlign.center,
                                                                                              style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                    fontFamily: 'Tajawal',
                                                                                                    fontSize: 16.0,
                                                                                                    letterSpacing: 0.0,
                                                                                                  ),
                                                                                            ),
                                                                                          ),
                                                                                        ),
                                                                                        Icon(
                                                                                          Icons.arrow_back,
                                                                                          color: FlutterFlowTheme.of(context).primaryText,
                                                                                          size: 0.0,
                                                                                        ),
                                                                                      ],
                                                                                    ),
                                                                                  ),
                                                                                  if (_model.nqury == 11)
                                                                                    Padding(
                                                                                      padding: EdgeInsetsDirectional.fromSTEB(0.0, 5.0, 0.0, 5.0),
                                                                                      child: StreamBuilder<List<SabafonRecord>>(
                                                                                        stream: querySabafonRecord(
                                                                                          queryBuilder: (sabafonRecord) => sabafonRecord
                                                                                              .where(
                                                                                                'mainname',
                                                                                                isEqualTo: 'باقات سبأفون اخرى',
                                                                                              )
                                                                                              .where(
                                                                                                'type',
                                                                                                isEqualTo: 'دفع مسبق',
                                                                                              ),
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
                                                                                          List<SabafonRecord> listViewSabafonRecordList = snapshot.data!;

                                                                                          return ListView.builder(
                                                                                            padding: EdgeInsets.zero,
                                                                                            primary: false,
                                                                                            shrinkWrap: true,
                                                                                            scrollDirection: Axis.vertical,
                                                                                            itemCount: listViewSabafonRecordList.length,
                                                                                            itemBuilder: (context, listViewIndex) {
                                                                                              final listViewSabafonRecord = listViewSabafonRecordList[listViewIndex];
                                                                                              return Padding(
                                                                                                padding: EdgeInsetsDirectional.fromSTEB(0.0, 2.0, 0.0, 2.0),
                                                                                                child: Container(
                                                                                                  width: double.infinity,
                                                                                                  decoration: BoxDecoration(
                                                                                                    color: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                                    border: Border.all(
                                                                                                      color: Color(0xE97004DD),
                                                                                                    ),
                                                                                                  ),
                                                                                                  child: Row(
                                                                                                    mainAxisSize: MainAxisSize.max,
                                                                                                    children: [
                                                                                                      Align(
                                                                                                        alignment: AlignmentDirectional(0.0, 0.0),
                                                                                                        child: Padding(
                                                                                                          padding: EdgeInsetsDirectional.fromSTEB(5.0, 0.0, 5.0, 0.0),
                                                                                                          child: Container(
                                                                                                            width: 80.0,
                                                                                                            height: 20.0,
                                                                                                            decoration: BoxDecoration(
                                                                                                              color: Color(0xE90704DD),
                                                                                                              borderRadius: BorderRadius.circular(8.0),
                                                                                                            ),
                                                                                                            alignment: AlignmentDirectional(0.0, 0.0),
                                                                                                            child: Padding(
                                                                                                              padding: EdgeInsetsDirectional.fromSTEB(10.0, 0.0, 5.0, 0.0),
                                                                                                              child: Text(
                                                                                                                listViewSabafonRecord.cost.toString(),
                                                                                                                textAlign: TextAlign.center,
                                                                                                                style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                                      fontFamily: 'Inter',
                                                                                                                      color: Color(0xFFF0F8FF),
                                                                                                                      letterSpacing: 0.0,
                                                                                                                    ),
                                                                                                              ),
                                                                                                            ),
                                                                                                          ),
                                                                                                        ),
                                                                                                      ),
                                                                                                      Expanded(
                                                                                                        child: Material(
                                                                                                          color: Colors.transparent,
                                                                                                          child: Theme(
                                                                                                            data: ThemeData(
                                                                                                              checkboxTheme: CheckboxThemeData(
                                                                                                                visualDensity: VisualDensity.compact,
                                                                                                                materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                                                                                                              ),
                                                                                                              unselectedWidgetColor: FlutterFlowTheme.of(context).alternate,
                                                                                                            ),
                                                                                                            child: CheckboxListTile(
                                                                                                              value: _model.checkboxListTileValueMap6[listViewSabafonRecord] ??= false,
                                                                                                              onChanged: (newValue) async {
                                                                                                                safeSetState(() => _model.checkboxListTileValueMap6[listViewSabafonRecord] = newValue!);
                                                                                                                if (newValue!) {
                                                                                                                  safeSetState(() {
                                                                                                                    _model.priceTextController?.text = listViewSabafonRecord.amount.toString();
                                                                                                                  });
                                                                                                                  safeSetState(() {
                                                                                                                    _model.subscriberTextController?.text = listViewSabafonRecord.id;
                                                                                                                  });
                                                                                                                  safeSetState(() {
                                                                                                                    _model.nameofferTextController?.text = listViewSabafonRecord.name;
                                                                                                                  });
                                                                                                                  safeSetState(() {
                                                                                                                    _model.coastTextController?.text = listViewSabafonRecord.cost.toString();
                                                                                                                  });
                                                                                                                  _model.numerref = random_data.randomInteger(2, 8);
                                                                                                                  safeSetState(() {});
                                                                                                                } else {
                                                                                                                  safeSetState(() {
                                                                                                                    _model.nameofferTextController?.clear();
                                                                                                                    _model.priceTextController?.clear();
                                                                                                                    _model.coastTextController?.clear();
                                                                                                                  });
                                                                                                                }
                                                                                                              },
                                                                                                              title: Text(
                                                                                                                listViewSabafonRecord.name,
                                                                                                                textAlign: TextAlign.center,
                                                                                                                style: FlutterFlowTheme.of(context).titleLarge.override(
                                                                                                                      fontFamily: 'Inter',
                                                                                                                      fontSize: 14.0,
                                                                                                                      letterSpacing: 0.0,
                                                                                                                    ),
                                                                                                              ),
                                                                                                              tileColor: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                                              activeColor: Color(0xFF2603C9),
                                                                                                              checkColor: FlutterFlowTheme.of(context).info,
                                                                                                              dense: false,
                                                                                                              controlAffinity: ListTileControlAffinity.trailing,
                                                                                                              contentPadding: EdgeInsetsDirectional.fromSTEB(12.0, 0.0, 12.0, 0.0),
                                                                                                              shape: RoundedRectangleBorder(
                                                                                                                borderRadius: BorderRadius.circular(8.0),
                                                                                                              ),
                                                                                                            ),
                                                                                                          ),
                                                                                                        ),
                                                                                                      ),
                                                                                                    ],
                                                                                                  ),
                                                                                                ),
                                                                                              );
                                                                                            },
                                                                                          );
                                                                                        },
                                                                                      ),
                                                                                    ),
                                                                                ],
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
                                                          ],
                                                        ),
                                                      ),
                                                      Padding(
                                                        padding:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    0.0,
                                                                    0.0,
                                                                    0.0,
                                                                    5.0),
                                                        child:
                                                            SingleChildScrollView(
                                                          child: Column(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .max,
                                                            children: [
                                                              Padding(
                                                                padding: EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        0.0,
                                                                        20.0,
                                                                        0.0,
                                                                        10.0),
                                                                child: InkWell(
                                                                  splashColor:
                                                                      Colors
                                                                          .transparent,
                                                                  focusColor: Colors
                                                                      .transparent,
                                                                  hoverColor: Colors
                                                                      .transparent,
                                                                  highlightColor:
                                                                      Colors
                                                                          .transparent,
                                                                  onTap:
                                                                      () async {
                                                                    _model.nqury =
                                                                        4;
                                                                    safeSetState(
                                                                        () {});
                                                                  },
                                                                  child:
                                                                      Container(
                                                                    width: double
                                                                        .infinity,
                                                                    decoration:
                                                                        BoxDecoration(
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .secondaryBackground,
                                                                      borderRadius:
                                                                          BorderRadius.circular(
                                                                              10.0),
                                                                      border:
                                                                          Border
                                                                              .all(
                                                                        color: _model.nqury ==
                                                                                4
                                                                            ? Color(0xE97004DD)
                                                                            : FlutterFlowTheme.of(context).secondaryBackground,
                                                                      ),
                                                                    ),
                                                                    child:
                                                                        SingleChildScrollView(
                                                                      child:
                                                                          Column(
                                                                        mainAxisSize:
                                                                            MainAxisSize.max,
                                                                        children: [
                                                                          Padding(
                                                                            padding: EdgeInsetsDirectional.fromSTEB(
                                                                                0.0,
                                                                                10.0,
                                                                                0.0,
                                                                                10.0),
                                                                            child:
                                                                                Row(
                                                                              mainAxisSize: MainAxisSize.max,
                                                                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                                              children: [
                                                                                Align(
                                                                                  alignment: AlignmentDirectional(-1.0, 0.0),
                                                                                  child: Padding(
                                                                                    padding: EdgeInsetsDirectional.fromSTEB(20.0, 0.0, 20.0, 0.0),
                                                                                    child: Icon(
                                                                                      Icons.arrow_drop_down_rounded,
                                                                                      color: FlutterFlowTheme.of(context).primaryText,
                                                                                      size: 24.0,
                                                                                    ),
                                                                                  ),
                                                                                ),
                                                                                Align(
                                                                                  alignment: AlignmentDirectional(0.0, 0.0),
                                                                                  child: Padding(
                                                                                    padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 20.0, 0.0),
                                                                                    child: Text(
                                                                                      FFLocalizations.of(context).getText(
                                                                                        'ghisbxoi' /* وحدات سبأفون */,
                                                                                      ),
                                                                                      textAlign: TextAlign.center,
                                                                                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                            fontFamily: 'Tajawal',
                                                                                            fontSize: 16.0,
                                                                                            letterSpacing: 0.0,
                                                                                          ),
                                                                                    ),
                                                                                  ),
                                                                                ),
                                                                                Icon(
                                                                                  Icons.arrow_back,
                                                                                  color: FlutterFlowTheme.of(context).primaryText,
                                                                                  size: 0.0,
                                                                                ),
                                                                              ],
                                                                            ),
                                                                          ),
                                                                          if (_model.nqury ==
                                                                              4)
                                                                            StreamBuilder<List<SabafonRecord>>(
                                                                              stream: querySabafonRecord(
                                                                                queryBuilder: (sabafonRecord) => sabafonRecord.where(
                                                                                  'mainname',
                                                                                  isEqualTo: 'وحدات',
                                                                                ),
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
                                                                                List<SabafonRecord> listViewSabafonRecordList = snapshot.data!;

                                                                                return ListView.builder(
                                                                                  padding: EdgeInsets.zero,
                                                                                  primary: false,
                                                                                  shrinkWrap: true,
                                                                                  scrollDirection: Axis.vertical,
                                                                                  itemCount: listViewSabafonRecordList.length,
                                                                                  itemBuilder: (context, listViewIndex) {
                                                                                    final listViewSabafonRecord = listViewSabafonRecordList[listViewIndex];
                                                                                    return Padding(
                                                                                      padding: EdgeInsetsDirectional.fromSTEB(0.0, 2.0, 0.0, 2.0),
                                                                                      child: Container(
                                                                                        width: double.infinity,
                                                                                        height: 51.0,
                                                                                        decoration: BoxDecoration(
                                                                                          color: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                          border: Border.all(
                                                                                            color: Color(0xE97004DD),
                                                                                          ),
                                                                                        ),
                                                                                        child: Row(
                                                                                          mainAxisSize: MainAxisSize.max,
                                                                                          children: [
                                                                                            Align(
                                                                                              alignment: AlignmentDirectional(0.0, 0.0),
                                                                                              child: Padding(
                                                                                                padding: EdgeInsetsDirectional.fromSTEB(5.0, 0.0, 5.0, 0.0),
                                                                                                child: Container(
                                                                                                  width: 80.0,
                                                                                                  height: 20.0,
                                                                                                  decoration: BoxDecoration(
                                                                                                    color: Color(0xE92A04DD),
                                                                                                    borderRadius: BorderRadius.circular(6.0),
                                                                                                  ),
                                                                                                  alignment: AlignmentDirectional(0.0, 0.0),
                                                                                                  child: Padding(
                                                                                                    padding: EdgeInsetsDirectional.fromSTEB(10.0, 0.0, 5.0, 0.0),
                                                                                                    child: Text(
                                                                                                      listViewSabafonRecord.cost.toString(),
                                                                                                      textAlign: TextAlign.center,
                                                                                                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                            fontFamily: 'Inter',
                                                                                                            color: Color(0xFFEAF6FF),
                                                                                                            letterSpacing: 0.0,
                                                                                                          ),
                                                                                                    ),
                                                                                                  ),
                                                                                                ),
                                                                                              ),
                                                                                            ),
                                                                                            Expanded(
                                                                                              child: Material(
                                                                                                color: Colors.transparent,
                                                                                                child: Theme(
                                                                                                  data: ThemeData(
                                                                                                    checkboxTheme: CheckboxThemeData(
                                                                                                      visualDensity: VisualDensity.compact,
                                                                                                      materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                                                                                                    ),
                                                                                                    unselectedWidgetColor: FlutterFlowTheme.of(context).alternate,
                                                                                                  ),
                                                                                                  child: CheckboxListTile(
                                                                                                    value: _model.checkboxListTileValueMap7[listViewSabafonRecord] ??= false,
                                                                                                    onChanged: (newValue) async {
                                                                                                      safeSetState(() => _model.checkboxListTileValueMap7[listViewSabafonRecord] = newValue!);
                                                                                                      if (newValue!) {
                                                                                                        safeSetState(() {
                                                                                                          _model.priceTextController?.text = listViewSabafonRecord.amount.toString();
                                                                                                        });
                                                                                                        safeSetState(() {
                                                                                                          _model.subscriberTextController?.text = listViewSabafonRecord.id;
                                                                                                        });
                                                                                                        safeSetState(() {
                                                                                                          _model.nameofferTextController?.text = listViewSabafonRecord.name;
                                                                                                        });
                                                                                                        safeSetState(() {
                                                                                                          _model.coastTextController?.text = listViewSabafonRecord.cost.toString();
                                                                                                        });
                                                                                                        _model.numerref = random_data.randomInteger(2, 8);
                                                                                                        safeSetState(() {});
                                                                                                      }
                                                                                                    },
                                                                                                    title: Text(
                                                                                                      listViewSabafonRecord.name,
                                                                                                      textAlign: TextAlign.center,
                                                                                                      style: FlutterFlowTheme.of(context).titleLarge.override(
                                                                                                            fontFamily: 'Inter',
                                                                                                            fontSize: 14.0,
                                                                                                            letterSpacing: 0.0,
                                                                                                          ),
                                                                                                    ),
                                                                                                    tileColor: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                                    activeColor: Color(0xFF000D9C),
                                                                                                    checkColor: FlutterFlowTheme.of(context).info,
                                                                                                    dense: false,
                                                                                                    controlAffinity: ListTileControlAffinity.trailing,
                                                                                                    contentPadding: EdgeInsetsDirectional.fromSTEB(12.0, 0.0, 12.0, 0.0),
                                                                                                    shape: RoundedRectangleBorder(
                                                                                                      borderRadius: BorderRadius.circular(8.0),
                                                                                                    ),
                                                                                                  ),
                                                                                                ),
                                                                                              ),
                                                                                            ),
                                                                                          ],
                                                                                        ),
                                                                                      ),
                                                                                    );
                                                                                  },
                                                                                );
                                                                              },
                                                                            ),
                                                                        ],
                                                                      ),
                                                                    ),
                                                                  ),
                                                                ),
                                                              ),
                                                            ],
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
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      if (_model.button == 21)
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 10.0, 0.0, 0.0),
                          child: FFButtonWidget(
                            onPressed: () async {
                              if (_model.formKey.currentState == null ||
                                  !_model.formKey.currentState!.validate()) {
                                return;
                              }
                              await showModalBottomSheet(
                                isScrollControlled: true,
                                backgroundColor: FlutterFlowTheme.of(context)
                                    .secondaryBackground,
                                context: context,
                                builder: (context) {
                                  return WebViewAware(
                                    child: GestureDetector(
                                      onTap: () =>
                                          FocusScope.of(context).unfocus(),
                                      child: Padding(
                                        padding:
                                            MediaQuery.viewInsetsOf(context),
                                        child: Container(
                                          height: 400.0,
                                          child: SurerasidWidget(
                                            ac: 7100,
                                            sc: 42101,
                                            sno: _model.textController9.text,
                                            sac: _model
                                                .subscriberTextController.text,
                                            ofernamer: _model
                                                .nameofferTextController.text,
                                            mt: 1,
                                            numberref: int.tryParse(_model
                                                .numberrefTextController.text),
                                            amt: double.tryParse(_model
                                                .priceTextController.text),
                                            coast: double.tryParse(_model
                                                .coastTextController.text),
                                          ),
                                        ),
                                      ),
                                    ),
                                  );
                                },
                              ).then((value) => safeSetState(() {}));
                            },
                            text: FFLocalizations.of(context).getText(
                              'zd53b5q2' /* متابعة  */,
                            ),
                            options: FFButtonOptions(
                              width: 300.0,
                              height: 40.0,
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  24.0, 0.0, 24.0, 0.0),
                              iconPadding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 0.0, 0.0, 0.0),
                              color: Color(0xFF008BB6),
                              textStyle: FlutterFlowTheme.of(context)
                                  .titleSmall
                                  .override(
                                    fontFamily: 'Tajawal',
                                    color: Colors.white,
                                    letterSpacing: 0.0,
                                  ),
                              elevation: 3.0,
                              borderSide: BorderSide(
                                color: Colors.transparent,
                                width: 1.0,
                              ),
                              borderRadius: BorderRadius.only(
                                bottomLeft: Radius.circular(0.0),
                                bottomRight: Radius.circular(0.0),
                                topLeft: Radius.circular(10.0),
                                topRight: Radius.circular(10.0),
                              ),
                            ),
                          ),
                        ),
                      if (_model.button == 20)
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 10.0, 0.0, 0.0),
                          child: FFButtonWidget(
                            onPressed: () async {
                              if (_model.formKey.currentState == null ||
                                  !_model.formKey.currentState!.validate()) {
                                return;
                              }
                              await showModalBottomSheet(
                                isScrollControlled: true,
                                backgroundColor: FlutterFlowTheme.of(context)
                                    .secondaryBackground,
                                context: context,
                                builder: (context) {
                                  return WebViewAware(
                                    child: GestureDetector(
                                      onTap: () =>
                                          FocusScope.of(context).unfocus(),
                                      child: Padding(
                                        padding:
                                            MediaQuery.viewInsetsOf(context),
                                        child: Container(
                                          height: 400.0,
                                          child: SurerasidWidget(
                                            ac: int.tryParse(_model
                                                .actionTextController.text),
                                            sc: 42101,
                                            sno: _model.textController9.text,
                                            sac: _model
                                                .subscriberTextController.text,
                                            ofernamer: _model
                                                .nameofferTextController.text,
                                            mt: int.tryParse(
                                                _model.mt22TextController.text),
                                            numberref: int.tryParse(_model
                                                .numberrefTextController.text),
                                            coast: double.tryParse(_model
                                                .coastTextController.text),
                                            amt: double.tryParse(_model
                                                .priceTextController.text),
                                          ),
                                        ),
                                      ),
                                    ),
                                  );
                                },
                              ).then((value) => safeSetState(() {}));
                            },
                            text: FFLocalizations.of(context).getText(
                              '3qyjyys1' /* متابعة  */,
                            ),
                            options: FFButtonOptions(
                              width: 300.0,
                              height: 40.0,
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  24.0, 0.0, 24.0, 0.0),
                              iconPadding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 0.0, 0.0, 0.0),
                              color: Color(0xFF008BB6),
                              textStyle: FlutterFlowTheme.of(context)
                                  .titleSmall
                                  .override(
                                    fontFamily: 'Tajawal',
                                    color: Colors.white,
                                    letterSpacing: 0.0,
                                  ),
                              elevation: 3.0,
                              borderSide: BorderSide(
                                color: Colors.transparent,
                                width: 1.0,
                              ),
                              borderRadius: BorderRadius.only(
                                bottomLeft: Radius.circular(0.0),
                                bottomRight: Radius.circular(0.0),
                                topLeft: Radius.circular(10.0),
                                topRight: Radius.circular(10.0),
                              ),
                            ),
                          ),
                        ),
                    ],
                  ),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
