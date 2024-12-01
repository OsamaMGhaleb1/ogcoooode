import '/backend/api_requests/api_calls.dart';
import '/backend/backend.dart';
import '/components/sureraseedyemen_widget.dart';
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
import 'yemenmobile_model.dart';
export 'yemenmobile_model.dart';

class YemenmobileWidget extends StatefulWidget {
  const YemenmobileWidget({
    super.key,
    required this.name,
    this.jk,
  });

  final String? name;
  final ShahnraseedRecord? jk;

  @override
  State<YemenmobileWidget> createState() => _YemenmobileWidgetState();
}

class _YemenmobileWidgetState extends State<YemenmobileWidget>
    with TickerProviderStateMixin {
  late YemenmobileModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => YemenmobileModel());

    _model.textController1 ??= TextEditingController(text: widget!.name);
    _model.textFieldFocusNode1 ??= FocusNode();

    _model.offerTextController ??= TextEditingController();
    _model.offerFocusNode ??= FocusNode();

    _model.actioncodeTextController ??= TextEditingController();
    _model.actioncodeFocusNode ??= FocusNode();

    _model.ofernameTextController ??= TextEditingController();
    _model.ofernameFocusNode ??= FocusNode();

    _model.numberrefTextController ??= TextEditingController(
        text: random_data.randomString(
      2,
      8,
      false,
      false,
      true,
    ));
    _model.numberrefFocusNode ??= FocusNode();

    _model.numberrefsolfahTextController ??= TextEditingController(
        text: random_data.randomString(
      2,
      8,
      false,
      false,
      true,
    ));
    _model.numberrefsolfahFocusNode ??= FocusNode();

    _model.costTextController ??= TextEditingController();
    _model.costFocusNode ??= FocusNode();

    _model.solfahTextController ??= TextEditingController();
    _model.solfahFocusNode ??= FocusNode();

    _model.textController9 ??= TextEditingController();
    _model.textFieldFocusNode2 ??= FocusNode();
    _model.textFieldFocusNode2!.addListener(
      () async {
        _model.yemen77 = '01';
        safeSetState(() {});
        _model.estelam = 100;
        safeSetState(() {});
      },
    );
    _model.tabBarController = TabController(
      vsync: this,
      length: 2,
      initialIndex: 0,
    )..addListener(() => safeSetState(() {}));
    _model.priceTextController ??= TextEditingController();
    _model.priceFocusNode ??= FocusNode();

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {
          _model.actioncodeTextController?.text =
              FFLocalizations.of(context).getText(
            'w34ow6a0' /* 7200 */,
          );
          _model.solfahTextController?.text =
              FFLocalizations.of(context).getText(
            'g1zk0zc3' /* 0 */,
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
    return FutureBuilder<ApiCallResponse>(
      future: OffersManagementMessageYMOBILECall.call(
        ac: 4007,
        sc: 42103,
        sno: _model.textController9.text,
      ),
      builder: (context, snapshot) {
        // Customize what your widget looks like when it's loading.
        if (!snapshot.hasData) {
          return Scaffold(
            backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
            body: Center(
              child: SizedBox(
                width: 44.0,
                height: 44.0,
                child: CircularProgressIndicator(
                  valueColor: AlwaysStoppedAnimation<Color>(
                    FlutterFlowTheme.of(context).primary,
                  ),
                ),
              ),
            ),
          );
        }
        final yemenmobileOffersManagementMessageYMOBILEResponse =
            snapshot.data!;

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
              title: Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(8.0, 0.0, 8.0, 0.0),
                    child: TextFormField(
                      controller: _model.textController1,
                      focusNode: _model.textFieldFocusNode1,
                      autofocus: true,
                      readOnly: true,
                      obscureText: false,
                      decoration: InputDecoration(
                        labelStyle:
                            FlutterFlowTheme.of(context).labelMedium.override(
                                  fontFamily: 'Inter',
                                  letterSpacing: 0.0,
                                ),
                        hintStyle:
                            FlutterFlowTheme.of(context).labelMedium.override(
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
                      validator:
                          _model.textController1Validator.asValidator(context),
                    ),
                  ),
                ],
              ),
              actions: [],
              centerTitle: false,
              elevation: 2.0,
            ),
            body: SafeArea(
              top: true,
              child: Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  SingleChildScrollView(
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Column(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            FutureBuilder<ApiCallResponse>(
                              future: PaymentMessageCall.call(),
                              builder: (context, snapshot) {
                                // Customize what your widget looks like when it's loading.
                                if (!snapshot.hasData) {
                                  return Center(
                                    child: SizedBox(
                                      width: 44.0,
                                      height: 44.0,
                                      child: CircularProgressIndicator(
                                        valueColor:
                                            AlwaysStoppedAnimation<Color>(
                                          FlutterFlowTheme.of(context).primary,
                                        ),
                                      ),
                                    ),
                                  );
                                }
                                final formPaymentMessageResponse =
                                    snapshot.data!;

                                return Form(
                                  key: _model.formKey,
                                  autovalidateMode: AutovalidateMode.disabled,
                                  child: Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0.0, 0.0, 0.0, 10.0),
                                    child: SingleChildScrollView(
                                      child: Column(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Container(
                                            width: double.infinity,
                                            height: 0.0,
                                            decoration: BoxDecoration(
                                              borderRadius: BorderRadius.only(
                                                bottomLeft:
                                                    Radius.circular(5.0),
                                                bottomRight:
                                                    Radius.circular(5.0),
                                                topLeft: Radius.circular(0.0),
                                                topRight: Radius.circular(0.0),
                                              ),
                                            ),
                                            child: Column(
                                              mainAxisSize: MainAxisSize.max,
                                              children: [
                                                Container(
                                                  width: 0.0,
                                                  child: TextFormField(
                                                    controller: _model
                                                        .offerTextController,
                                                    focusNode:
                                                        _model.offerFocusNode,
                                                    autofocus: false,
                                                    obscureText: false,
                                                    decoration: InputDecoration(
                                                      isDense: true,
                                                      labelStyle:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .labelMedium
                                                              .override(
                                                                fontFamily:
                                                                    'Inter',
                                                                letterSpacing:
                                                                    0.0,
                                                              ),
                                                      hintStyle:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .labelMedium
                                                              .override(
                                                                fontFamily:
                                                                    'Inter',
                                                                letterSpacing:
                                                                    0.0,
                                                              ),
                                                      enabledBorder:
                                                          InputBorder.none,
                                                      focusedBorder:
                                                          InputBorder.none,
                                                      errorBorder:
                                                          InputBorder.none,
                                                      focusedErrorBorder:
                                                          InputBorder.none,
                                                      filled: true,
                                                    ),
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily: 'Inter',
                                                          fontSize: 0.0,
                                                          letterSpacing: 0.0,
                                                        ),
                                                    textAlign: TextAlign.center,
                                                    maxLines: null,
                                                    cursorColor:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .primaryText,
                                                    validator: _model
                                                        .offerTextControllerValidator
                                                        .asValidator(context),
                                                  ),
                                                ),
                                                Container(
                                                  width: 20.0,
                                                  child: TextFormField(
                                                    controller: _model
                                                        .actioncodeTextController,
                                                    focusNode: _model
                                                        .actioncodeFocusNode,
                                                    autofocus: false,
                                                    obscureText: false,
                                                    decoration: InputDecoration(
                                                      isDense: true,
                                                      labelStyle:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .labelMedium
                                                              .override(
                                                                fontFamily:
                                                                    'Inter',
                                                                letterSpacing:
                                                                    0.0,
                                                              ),
                                                      hintStyle:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .labelMedium
                                                              .override(
                                                                fontFamily:
                                                                    'Inter',
                                                                letterSpacing:
                                                                    0.0,
                                                              ),
                                                      enabledBorder:
                                                          InputBorder.none,
                                                      focusedBorder:
                                                          InputBorder.none,
                                                      errorBorder:
                                                          InputBorder.none,
                                                      focusedErrorBorder:
                                                          InputBorder.none,
                                                      filled: true,
                                                    ),
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily: 'Inter',
                                                          fontSize: 0.0,
                                                          letterSpacing: 0.0,
                                                        ),
                                                    textAlign: TextAlign.center,
                                                    maxLines: null,
                                                    cursorColor:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .primaryText,
                                                    validator: _model
                                                        .actioncodeTextControllerValidator
                                                        .asValidator(context),
                                                  ),
                                                ),
                                                Container(
                                                  width: double.infinity,
                                                  child: TextFormField(
                                                    controller: _model
                                                        .ofernameTextController,
                                                    focusNode: _model
                                                        .ofernameFocusNode,
                                                    autofocus: false,
                                                    obscureText: false,
                                                    decoration: InputDecoration(
                                                      isDense: true,
                                                      labelStyle:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .labelMedium
                                                              .override(
                                                                fontFamily:
                                                                    'Inter',
                                                                letterSpacing:
                                                                    0.0,
                                                              ),
                                                      hintStyle:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .labelMedium
                                                              .override(
                                                                fontFamily:
                                                                    'Inter',
                                                                letterSpacing:
                                                                    0.0,
                                                              ),
                                                      enabledBorder:
                                                          InputBorder.none,
                                                      focusedBorder:
                                                          InputBorder.none,
                                                      errorBorder:
                                                          InputBorder.none,
                                                      focusedErrorBorder:
                                                          InputBorder.none,
                                                      filled: true,
                                                    ),
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily: 'Inter',
                                                          fontSize: 14.0,
                                                          letterSpacing: 0.0,
                                                        ),
                                                    textAlign: TextAlign.center,
                                                    maxLines: null,
                                                    cursorColor:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .primaryText,
                                                    validator: _model
                                                        .ofernameTextControllerValidator
                                                        .asValidator(context),
                                                  ),
                                                ),
                                                Container(
                                                  width: double.infinity,
                                                  child: TextFormField(
                                                    controller: _model
                                                        .numberrefTextController,
                                                    focusNode: _model
                                                        .numberrefFocusNode,
                                                    autofocus: false,
                                                    obscureText: false,
                                                    decoration: InputDecoration(
                                                      isDense: true,
                                                      labelStyle:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .labelMedium
                                                              .override(
                                                                fontFamily:
                                                                    'Inter',
                                                                letterSpacing:
                                                                    0.0,
                                                              ),
                                                      hintStyle:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .labelMedium
                                                              .override(
                                                                fontFamily:
                                                                    'Inter',
                                                                letterSpacing:
                                                                    0.0,
                                                              ),
                                                      enabledBorder:
                                                          InputBorder.none,
                                                      focusedBorder:
                                                          InputBorder.none,
                                                      errorBorder:
                                                          InputBorder.none,
                                                      focusedErrorBorder:
                                                          InputBorder.none,
                                                      filled: true,
                                                    ),
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily: 'Inter',
                                                          fontSize: 14.0,
                                                          letterSpacing: 0.0,
                                                        ),
                                                    textAlign: TextAlign.center,
                                                    maxLines: null,
                                                    cursorColor:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .primaryText,
                                                    validator: _model
                                                        .numberrefTextControllerValidator
                                                        .asValidator(context),
                                                  ),
                                                ),
                                                Container(
                                                  width: double.infinity,
                                                  child: TextFormField(
                                                    controller: _model
                                                        .numberrefsolfahTextController,
                                                    focusNode: _model
                                                        .numberrefsolfahFocusNode,
                                                    autofocus: false,
                                                    obscureText: false,
                                                    decoration: InputDecoration(
                                                      isDense: true,
                                                      labelStyle:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .labelMedium
                                                              .override(
                                                                fontFamily:
                                                                    'Inter',
                                                                letterSpacing:
                                                                    0.0,
                                                              ),
                                                      hintStyle:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .labelMedium
                                                              .override(
                                                                fontFamily:
                                                                    'Inter',
                                                                letterSpacing:
                                                                    0.0,
                                                              ),
                                                      enabledBorder:
                                                          InputBorder.none,
                                                      focusedBorder:
                                                          InputBorder.none,
                                                      errorBorder:
                                                          InputBorder.none,
                                                      focusedErrorBorder:
                                                          InputBorder.none,
                                                      filled: true,
                                                    ),
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily: 'Inter',
                                                          fontSize: 14.0,
                                                          letterSpacing: 0.0,
                                                        ),
                                                    textAlign: TextAlign.center,
                                                    maxLines: null,
                                                    cursorColor:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .primaryText,
                                                    validator: _model
                                                        .numberrefsolfahTextControllerValidator
                                                        .asValidator(context),
                                                  ),
                                                ),
                                                Container(
                                                  width: double.infinity,
                                                  child: TextFormField(
                                                    controller: _model
                                                        .costTextController,
                                                    focusNode:
                                                        _model.costFocusNode,
                                                    autofocus: false,
                                                    obscureText: false,
                                                    decoration: InputDecoration(
                                                      isDense: true,
                                                      labelStyle:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .labelMedium
                                                              .override(
                                                                fontFamily:
                                                                    'Inter',
                                                                letterSpacing:
                                                                    0.0,
                                                              ),
                                                      hintStyle:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .labelMedium
                                                              .override(
                                                                fontFamily:
                                                                    'Inter',
                                                                letterSpacing:
                                                                    0.0,
                                                              ),
                                                      enabledBorder:
                                                          InputBorder.none,
                                                      focusedBorder:
                                                          InputBorder.none,
                                                      errorBorder:
                                                          InputBorder.none,
                                                      focusedErrorBorder:
                                                          InputBorder.none,
                                                      filled: true,
                                                    ),
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily: 'Inter',
                                                          fontSize: 14.0,
                                                          letterSpacing: 0.0,
                                                        ),
                                                    textAlign: TextAlign.center,
                                                    maxLines: null,
                                                    cursorColor:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .primaryText,
                                                    validator: _model
                                                        .costTextControllerValidator
                                                        .asValidator(context),
                                                  ),
                                                ),
                                                Container(
                                                  width: double.infinity,
                                                  child: TextFormField(
                                                    controller: _model
                                                        .solfahTextController,
                                                    focusNode:
                                                        _model.solfahFocusNode,
                                                    autofocus: false,
                                                    obscureText: false,
                                                    decoration: InputDecoration(
                                                      isDense: true,
                                                      labelStyle:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .labelMedium
                                                              .override(
                                                                fontFamily:
                                                                    'Inter',
                                                                letterSpacing:
                                                                    0.0,
                                                              ),
                                                      hintStyle:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .labelMedium
                                                              .override(
                                                                fontFamily:
                                                                    'Inter',
                                                                letterSpacing:
                                                                    0.0,
                                                              ),
                                                      enabledBorder:
                                                          InputBorder.none,
                                                      focusedBorder:
                                                          InputBorder.none,
                                                      errorBorder:
                                                          InputBorder.none,
                                                      focusedErrorBorder:
                                                          InputBorder.none,
                                                      filled: true,
                                                    ),
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily: 'Inter',
                                                          fontSize: 14.0,
                                                          letterSpacing: 0.0,
                                                        ),
                                                    textAlign: TextAlign.center,
                                                    maxLines: null,
                                                    keyboardType:
                                                        TextInputType.number,
                                                    cursorColor:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .primaryText,
                                                    validator: _model
                                                        .solfahTextControllerValidator
                                                        .asValidator(context),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                          Align(
                                            alignment:
                                                AlignmentDirectional(0.0, 0.0),
                                            child: Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      0.0, 20.0, 0.0, 0.0),
                                              child: Row(
                                                mainAxisSize: MainAxisSize.max,
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                children: [
                                                  Align(
                                                    alignment:
                                                        AlignmentDirectional(
                                                            0.0, 0.0),
                                                    child: Padding(
                                                      padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  0.0,
                                                                  0.0,
                                                                  0.0,
                                                                  10.0),
                                                      child: Text(
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'ek6fljam' /* ادخل رقم يمن موبايل  */,
                                                        ),
                                                        style:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyMedium
                                                                .override(
                                                                  fontFamily:
                                                                      'Tajawal',
                                                                  letterSpacing:
                                                                      0.0,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w800,
                                                                ),
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 0.0, 0.0, 8.0),
                                            child: Container(
                                              decoration: BoxDecoration(
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .secondaryBackground,
                                                boxShadow: [
                                                  BoxShadow(
                                                    blurRadius: 2.0,
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .secondaryText,
                                                    offset: Offset(
                                                      0.0,
                                                      2.0,
                                                    ),
                                                  )
                                                ],
                                                borderRadius:
                                                    BorderRadius.circular(6.0),
                                                border: Border.all(
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .secondaryText,
                                                ),
                                              ),
                                              child: Column(
                                                mainAxisSize: MainAxisSize.max,
                                                children: [
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
                                                                    0.0),
                                                        child: Row(
                                                          mainAxisSize:
                                                              MainAxisSize.max,
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .center,
                                                          crossAxisAlignment:
                                                              CrossAxisAlignment
                                                                  .start,
                                                          children: [
                                                            Padding(
                                                              padding:
                                                                  EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          5.0,
                                                                          0.0,
                                                                          0.0,
                                                                          0.0),
                                                              child: Container(
                                                                width: 61.0,
                                                                height: 46.0,
                                                                decoration:
                                                                    BoxDecoration(),
                                                                child:
                                                                    Visibility(
                                                                  visible: _model
                                                                          .textController1
                                                                          .text ==
                                                                      'يمن موبايل',
                                                                  child:
                                                                      Container(
                                                                    width:
                                                                        100.0,
                                                                    height:
                                                                        100.0,
                                                                    clipBehavior:
                                                                        Clip.antiAlias,
                                                                    decoration:
                                                                        BoxDecoration(
                                                                      shape: BoxShape
                                                                          .circle,
                                                                    ),
                                                                    child: Image
                                                                        .asset(
                                                                      'assets/images/photo_--_--.jpg',
                                                                      fit: BoxFit
                                                                          .cover,
                                                                    ),
                                                                  ),
                                                                ),
                                                              ),
                                                            ),
                                                            Expanded(
                                                              child: Align(
                                                                alignment:
                                                                    AlignmentDirectional(
                                                                        0.0,
                                                                        0.0),
                                                                child: Padding(
                                                                  padding: EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          15.0,
                                                                          0.0,
                                                                          5.0,
                                                                          0.0),
                                                                  child:
                                                                      TextFormField(
                                                                    controller:
                                                                        _model
                                                                            .textController9,
                                                                    focusNode:
                                                                        _model
                                                                            .textFieldFocusNode2,
                                                                    onChanged: (_) =>
                                                                        EasyDebounce
                                                                            .debounce(
                                                                      '_model.textController9',
                                                                      Duration(
                                                                          milliseconds:
                                                                              2000),
                                                                      () async {
                                                                        await OffersManagementMessageYMOBILECall
                                                                            .call(
                                                                          ac: 4005,
                                                                          sc: 42103,
                                                                          sno: _model
                                                                              .textController9
                                                                              .text,
                                                                        );
                                                                      },
                                                                    ),
                                                                    autofocus:
                                                                        true,
                                                                    textCapitalization:
                                                                        TextCapitalization
                                                                            .none,
                                                                    obscureText:
                                                                        false,
                                                                    decoration:
                                                                        InputDecoration(
                                                                      labelText:
                                                                          FFLocalizations.of(context)
                                                                              .getText(
                                                                        'gxppdexn' /* رقم المشترك  */,
                                                                      ),
                                                                      labelStyle: FlutterFlowTheme.of(
                                                                              context)
                                                                          .labelMedium
                                                                          .override(
                                                                            fontFamily:
                                                                                'Tajawal',
                                                                            fontSize:
                                                                                20.0,
                                                                            letterSpacing:
                                                                                0.0,
                                                                          ),
                                                                      hintStyle: FlutterFlowTheme.of(
                                                                              context)
                                                                          .labelMedium
                                                                          .override(
                                                                            fontFamily:
                                                                                'Tajawal',
                                                                            fontSize:
                                                                                20.0,
                                                                            letterSpacing:
                                                                                0.0,
                                                                            fontWeight:
                                                                                FontWeight.bold,
                                                                          ),
                                                                      enabledBorder:
                                                                          OutlineInputBorder(
                                                                        borderSide:
                                                                            BorderSide(
                                                                          color:
                                                                              Color(0xFF036CEC),
                                                                          width:
                                                                              2.0,
                                                                        ),
                                                                        borderRadius:
                                                                            BorderRadius.circular(8.0),
                                                                      ),
                                                                      focusedBorder:
                                                                          OutlineInputBorder(
                                                                        borderSide:
                                                                            BorderSide(
                                                                          color:
                                                                              Color(0xFFBF0231),
                                                                          width:
                                                                              2.0,
                                                                        ),
                                                                        borderRadius:
                                                                            BorderRadius.circular(8.0),
                                                                      ),
                                                                      errorBorder:
                                                                          OutlineInputBorder(
                                                                        borderSide:
                                                                            BorderSide(
                                                                          color:
                                                                              FlutterFlowTheme.of(context).error,
                                                                          width:
                                                                              2.0,
                                                                        ),
                                                                        borderRadius:
                                                                            BorderRadius.circular(8.0),
                                                                      ),
                                                                      focusedErrorBorder:
                                                                          OutlineInputBorder(
                                                                        borderSide:
                                                                            BorderSide(
                                                                          color:
                                                                              FlutterFlowTheme.of(context).error,
                                                                          width:
                                                                              2.0,
                                                                        ),
                                                                        borderRadius:
                                                                            BorderRadius.circular(8.0),
                                                                      ),
                                                                      contentPadding: EdgeInsetsDirectional.fromSTEB(
                                                                          10.0,
                                                                          0.0,
                                                                          10.0,
                                                                          0.0),
                                                                      prefixIcon:
                                                                          Icon(
                                                                        Icons
                                                                            .phone_iphone_rounded,
                                                                        color: Color(
                                                                            0xFF3722F6),
                                                                      ),
                                                                    ),
                                                                    style: FlutterFlowTheme.of(
                                                                            context)
                                                                        .bodyMedium
                                                                        .override(
                                                                          fontFamily:
                                                                              'Tajawal',
                                                                          fontSize:
                                                                              20.0,
                                                                          letterSpacing:
                                                                              0.0,
                                                                          fontWeight:
                                                                              FontWeight.bold,
                                                                        ),
                                                                    textAlign:
                                                                        TextAlign
                                                                            .center,
                                                                    maxLength:
                                                                        9,
                                                                    keyboardType:
                                                                        TextInputType
                                                                            .phone,
                                                                    validator: _model
                                                                        .textController9Validator
                                                                        .asValidator(
                                                                            context),
                                                                    inputFormatters: [
                                                                      FilteringTextInputFormatter
                                                                          .allow(
                                                                              RegExp('[0-9]'))
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
                                                  if (_model.yemen77 == '01')
                                                    Padding(
                                                      padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  5.0,
                                                                  10.0,
                                                                  5.0,
                                                                  10.0),
                                                      child: FutureBuilder<
                                                          ApiCallResponse>(
                                                        future:
                                                            QuerySubscriberBalanceMessageCall
                                                                .call(
                                                          sno: _model
                                                              .textController9
                                                              .text,
                                                          sc: 42103,
                                                        ),
                                                        builder: (context,
                                                            snapshot) {
                                                          // Customize what your widget looks like when it's loading.
                                                          if (!snapshot
                                                              .hasData) {
                                                            return Center(
                                                              child: SizedBox(
                                                                width: 44.0,
                                                                height: 44.0,
                                                                child:
                                                                    CircularProgressIndicator(
                                                                  valueColor:
                                                                      AlwaysStoppedAnimation<
                                                                          Color>(
                                                                    FlutterFlowTheme.of(
                                                                            context)
                                                                        .primary,
                                                                  ),
                                                                ),
                                                              ),
                                                            );
                                                          }
                                                          final rowQuerySubscriberBalanceMessageResponse =
                                                              snapshot.data!;

                                                          return Row(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .max,
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .spaceEvenly,
                                                            children: [
                                                              Text(
                                                                getJsonField(
                                                                  rowQuerySubscriberBalanceMessageResponse
                                                                      .jsonBody,
                                                                  r'''$.BAL''',
                                                                ).toString(),
                                                                textAlign:
                                                                    TextAlign
                                                                        .center,
                                                                style: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMedium
                                                                    .override(
                                                                      fontFamily:
                                                                          'Tajawal',
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .secondary,
                                                                      fontSize:
                                                                          18.0,
                                                                      letterSpacing:
                                                                          0.0,
                                                                    ),
                                                              ),
                                                              if (_model
                                                                      .estelam ==
                                                                  10)
                                                                Expanded(
                                                                  child: Column(
                                                                    mainAxisSize:
                                                                        MainAxisSize
                                                                            .max,
                                                                    children: [
                                                                      if (_model
                                                                              .loan !=
                                                                          '{\"loanStatus\":0}')
                                                                        Align(
                                                                          alignment: AlignmentDirectional(
                                                                              0.0,
                                                                              0.0),
                                                                          child:
                                                                              Material(
                                                                            color:
                                                                                Colors.transparent,
                                                                            child:
                                                                                Theme(
                                                                              data: ThemeData(
                                                                                checkboxTheme: CheckboxThemeData(
                                                                                  visualDensity: VisualDensity.compact,
                                                                                  materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                                                                                ),
                                                                                unselectedWidgetColor: FlutterFlowTheme.of(context).alternate,
                                                                              ),
                                                                              child: CheckboxListTile(
                                                                                value: _model.loanchechValue ??= false,
                                                                                onChanged: (newValue) async {
                                                                                  safeSetState(() => _model.loanchechValue = newValue!);
                                                                                  if (newValue!) {
                                                                                    _model.cost = _model.cost! + 101.0;
                                                                                    safeSetState(() {});
                                                                                    safeSetState(() {
                                                                                      _model.solfahTextController?.text = '122';
                                                                                    });
                                                                                  } else {
                                                                                    safeSetState(() {
                                                                                      _model.solfahTextController?.clear();
                                                                                    });
                                                                                  }
                                                                                },
                                                                                title: Text(
                                                                                  FFLocalizations.of(context).getText(
                                                                                    '9g7qevef' /* تسديد السلفة */,
                                                                                  ),
                                                                                  textAlign: TextAlign.center,
                                                                                  style: FlutterFlowTheme.of(context).titleLarge.override(
                                                                                        fontFamily: 'Tajawal',
                                                                                        fontSize: 14.0,
                                                                                        letterSpacing: 0.0,
                                                                                      ),
                                                                                ),
                                                                                tileColor: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                activeColor: Color(0xFF6139EF),
                                                                                checkColor: FlutterFlowTheme.of(context).info,
                                                                                dense: false,
                                                                                controlAffinity: ListTileControlAffinity.trailing,
                                                                                shape: RoundedRectangleBorder(
                                                                                  borderRadius: BorderRadius.circular(8.0),
                                                                                ),
                                                                              ),
                                                                            ),
                                                                          ),
                                                                        ),
                                                                      if (_model
                                                                              .loan ==
                                                                          '{\"loanStatus\":0}')
                                                                        Text(
                                                                          FFLocalizations.of(context)
                                                                              .getText(
                                                                            'w4oyvgpy' /* غير متسلف */,
                                                                          ),
                                                                          style: FlutterFlowTheme.of(context)
                                                                              .bodyMedium
                                                                              .override(
                                                                                fontFamily: 'Tajawal',
                                                                                letterSpacing: 0.0,
                                                                              ),
                                                                        ),
                                                                    ],
                                                                  ),
                                                                ),
                                                              Padding(
                                                                padding:
                                                                    EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            10.0,
                                                                            5.0,
                                                                            0.0,
                                                                            0.0),
                                                                child:
                                                                    FFButtonWidget(
                                                                  onPressed:
                                                                      () async {
                                                                    await OffersManagementMessageYMOBILECall
                                                                        .call(
                                                                      ac: 4005,
                                                                      sc: 42103,
                                                                      sno: _model
                                                                          .textController9
                                                                          .text,
                                                                    );

                                                                    _model.estelam =
                                                                        10;
                                                                    safeSetState(
                                                                        () {});
                                                                    _model.loan =
                                                                        getJsonField(
                                                                      yemenmobileOffersManagementMessageYMOBILEResponse
                                                                          .jsonBody,
                                                                      r'''$.SD''',
                                                                    ).toString();
                                                                    safeSetState(
                                                                        () {});
                                                                  },
                                                                  text: FFLocalizations.of(
                                                                          context)
                                                                      .getText(
                                                                    's97yru92' /* إستعلام */,
                                                                  ),
                                                                  options:
                                                                      FFButtonOptions(
                                                                    width:
                                                                        100.0,
                                                                    height:
                                                                        30.0,
                                                                    padding: EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            24.0,
                                                                            0.0,
                                                                            24.0,
                                                                            0.0),
                                                                    iconPadding:
                                                                        EdgeInsetsDirectional.fromSTEB(
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
                                                                          color:
                                                                              Colors.white,
                                                                          letterSpacing:
                                                                              0.0,
                                                                        ),
                                                                    elevation:
                                                                        3.0,
                                                                    borderSide:
                                                                        BorderSide(
                                                                      color: Colors
                                                                          .transparent,
                                                                      width:
                                                                          1.0,
                                                                    ),
                                                                    borderRadius:
                                                                        BorderRadius.circular(
                                                                            8.0),
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
                                          Column(
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              if (_model.textController9.text !=
                                                      null &&
                                                  _model.textController9.text !=
                                                      '')
                                                Column(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  children: [
                                                    Row(
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .center,
                                                      children: [
                                                        Container(
                                                          width: 270.0,
                                                          height: 39.0,
                                                          decoration:
                                                              BoxDecoration(
                                                            color: Color(
                                                                0x0014181B),
                                                          ),
                                                          child: Align(
                                                            alignment:
                                                                AlignmentDirectional(
                                                                    0.0, 0.0),
                                                            child:
                                                                FlutterFlowChoiceChips(
                                                              options: [
                                                                ChipData(FFLocalizations.of(
                                                                        context)
                                                                    .getText(
                                                                  'x04btdc5' /* دفع مسبق */,
                                                                )),
                                                                ChipData(FFLocalizations.of(
                                                                        context)
                                                                    .getText(
                                                                  'f0s2xfbr' /* فوترة */,
                                                                ))
                                                              ],
                                                              onChanged:
                                                                  (val) async {
                                                                safeSetState(() =>
                                                                    _model.choiceChipsValue =
                                                                        val?.firstOrNull);
                                                                _model
                                                                    .mt = _model
                                                                            .choiceChipsValue ==
                                                                        'دفع مسبق'
                                                                    ? 1
                                                                    : 2;
                                                                safeSetState(
                                                                    () {});
                                                                _model.botton =
                                                                    101;
                                                                safeSetState(
                                                                    () {});
                                                              },
                                                              selectedChipStyle:
                                                                  ChipStyle(
                                                                backgroundColor:
                                                                    Color(
                                                                        0xFF98012E),
                                                                textStyle: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMedium
                                                                    .override(
                                                                      fontFamily:
                                                                          'Tajawal',
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .info,
                                                                      letterSpacing:
                                                                          0.0,
                                                                    ),
                                                                iconColor:
                                                                    FlutterFlowTheme.of(
                                                                            context)
                                                                        .info,
                                                                iconSize: 0.0,
                                                                elevation: 0.0,
                                                                borderColor: Color(
                                                                    0x0039D2C0),
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            8.0),
                                                              ),
                                                              unselectedChipStyle:
                                                                  ChipStyle(
                                                                backgroundColor:
                                                                    FlutterFlowTheme.of(
                                                                            context)
                                                                        .secondaryBackground,
                                                                textStyle: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMedium
                                                                    .override(
                                                                      fontFamily:
                                                                          'Inter',
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .secondaryText,
                                                                      letterSpacing:
                                                                          0.0,
                                                                    ),
                                                                iconColor: FlutterFlowTheme.of(
                                                                        context)
                                                                    .secondaryText,
                                                                iconSize: 16.0,
                                                                elevation: 0.0,
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            1.0),
                                                              ),
                                                              chipSpacing: 0.0,
                                                              multiselect:
                                                                  false,
                                                              initialized: _model
                                                                      .choiceChipsValue !=
                                                                  null,
                                                              alignment:
                                                                  WrapAlignment
                                                                      .start,
                                                              controller: _model
                                                                      .choiceChipsValueController ??=
                                                                  FormFieldController<
                                                                      List<
                                                                          String>>(
                                                                [
                                                                  FFLocalizations.of(
                                                                          context)
                                                                      .getText(
                                                                    'dm6q87o1' /* دفع مسبق */,
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
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        children: [
                                                          if (_model
                                                                  .choiceChipsValue ==
                                                              'فوترة')
                                                            Container(
                                                              width: 400.0,
                                                              height: 430.0,
                                                              decoration:
                                                                  BoxDecoration(
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            6.0),
                                                              ),
                                                              child:
                                                                  SingleChildScrollView(
                                                                child: Column(
                                                                  mainAxisSize:
                                                                      MainAxisSize
                                                                          .max,
                                                                  children: [
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
                                                                              width: 390.0,
                                                                              decoration: BoxDecoration(
                                                                                color: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                borderRadius: BorderRadius.circular(12.0),
                                                                                border: Border.all(
                                                                                  color: _model.nqury == 2 ? Color(0xFFBF022A) : FlutterFlowTheme.of(context).secondaryBackground,
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
                                                                                                '360uh8jr' /* باقات ومزايا فورجي  */,
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
                                                                                  SingleChildScrollView(
                                                                                    child: Column(
                                                                                      mainAxisSize: MainAxisSize.max,
                                                                                      children: [
                                                                                        if (_model.nqury == 2)
                                                                                          StreamBuilder<List<YemenmobileRecord>>(
                                                                                            stream: queryYemenmobileRecord(
                                                                                              queryBuilder: (yemenmobileRecord) => yemenmobileRecord
                                                                                                  .where(
                                                                                                    'NETWORKTYPE',
                                                                                                    isEqualTo: 'فوتره',
                                                                                                  )
                                                                                                  .where(
                                                                                                    'MANINAME',
                                                                                                    isEqualTo: 'باقات ومزايا فورجي',
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
                                                                                              List<YemenmobileRecord> listViewYemenmobileRecordList = snapshot.data!;

                                                                                              return ListView.builder(
                                                                                                padding: EdgeInsets.zero,
                                                                                                primary: false,
                                                                                                shrinkWrap: true,
                                                                                                scrollDirection: Axis.vertical,
                                                                                                itemCount: listViewYemenmobileRecordList.length,
                                                                                                itemBuilder: (context, listViewIndex) {
                                                                                                  final listViewYemenmobileRecord = listViewYemenmobileRecordList[listViewIndex];
                                                                                                  return Padding(
                                                                                                    padding: EdgeInsetsDirectional.fromSTEB(0.0, 2.0, 0.0, 2.0),
                                                                                                    child: Container(
                                                                                                      width: double.infinity,
                                                                                                      decoration: BoxDecoration(
                                                                                                        color: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                                        border: Border.all(
                                                                                                          color: Color(0xFFCE022B),
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
                                                                                                                  color: Color(0xFFA7022F),
                                                                                                                  borderRadius: BorderRadius.circular(8.0),
                                                                                                                ),
                                                                                                                alignment: AlignmentDirectional(0.0, 0.0),
                                                                                                                child: Padding(
                                                                                                                  padding: EdgeInsetsDirectional.fromSTEB(10.0, 0.0, 5.0, 0.0),
                                                                                                                  child: Text(
                                                                                                                    listViewYemenmobileRecord.cost.toString(),
                                                                                                                    textAlign: TextAlign.center,
                                                                                                                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                                          fontFamily: 'Inter',
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
                                                                                                                  value: _model.checkboxListTileValueMap1[listViewYemenmobileRecord] ??= false,
                                                                                                                  onChanged: (newValue) async {
                                                                                                                    safeSetState(() => _model.checkboxListTileValueMap1[listViewYemenmobileRecord] = newValue!);
                                                                                                                    if (newValue!) {
                                                                                                                      safeSetState(() {
                                                                                                                        _model.priceTextController?.text = listViewYemenmobileRecord.amount.toString();
                                                                                                                      });
                                                                                                                      safeSetState(() {
                                                                                                                        _model.offerTextController?.text = listViewYemenmobileRecord.id;
                                                                                                                      });
                                                                                                                      safeSetState(() {
                                                                                                                        _model.ofernameTextController?.text = listViewYemenmobileRecord.name;
                                                                                                                      });
                                                                                                                      safeSetState(() {
                                                                                                                        _model.costTextController?.text = listViewYemenmobileRecord.cost.toString();
                                                                                                                      });
                                                                                                                      _model.numberref = random_data.randomInteger(2, 8).toString();
                                                                                                                      safeSetState(() {});
                                                                                                                    } else {
                                                                                                                      safeSetState(() {
                                                                                                                        _model.offerTextController?.clear();
                                                                                                                        _model.priceTextController?.clear();
                                                                                                                      });
                                                                                                                    }
                                                                                                                  },
                                                                                                                  title: Text(
                                                                                                                    listViewYemenmobileRecord.name,
                                                                                                                    textAlign: TextAlign.center,
                                                                                                                    style: FlutterFlowTheme.of(context).titleLarge.override(
                                                                                                                          fontFamily: 'Inter',
                                                                                                                          fontSize: 14.0,
                                                                                                                          letterSpacing: 0.0,
                                                                                                                        ),
                                                                                                                  ),
                                                                                                                  tileColor: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                                                  activeColor: Color(0xFF9C0027),
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
                                                                                ],
                                                                              ),
                                                                            ),
                                                                          ),
                                                                        ),
                                                                      ],
                                                                    ),
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
                                                                              width: 390.0,
                                                                              decoration: BoxDecoration(
                                                                                color: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                borderRadius: BorderRadius.circular(12.0),
                                                                                border: Border.all(
                                                                                  color: _model.nqury == 4 ? Color(0xFFBF022A) : FlutterFlowTheme.of(context).secondaryBackground,
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
                                                                                                '4b82s6lm' /* باقات ومزايا ثريجي */,
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
                                                                                  SingleChildScrollView(
                                                                                    child: Column(
                                                                                      mainAxisSize: MainAxisSize.max,
                                                                                      children: [
                                                                                        if (_model.nqury == 4)
                                                                                          StreamBuilder<List<YemenmobileRecord>>(
                                                                                            stream: queryYemenmobileRecord(
                                                                                              queryBuilder: (yemenmobileRecord) => yemenmobileRecord
                                                                                                  .where(
                                                                                                    'NETWORKTYPE',
                                                                                                    isEqualTo: 'فوتره',
                                                                                                  )
                                                                                                  .where(
                                                                                                    'MANINAME',
                                                                                                    isEqualTo: 'باقات ومزايا ثريجي',
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
                                                                                              List<YemenmobileRecord> listViewYemenmobileRecordList = snapshot.data!;

                                                                                              return ListView.builder(
                                                                                                padding: EdgeInsets.zero,
                                                                                                primary: false,
                                                                                                shrinkWrap: true,
                                                                                                scrollDirection: Axis.vertical,
                                                                                                itemCount: listViewYemenmobileRecordList.length,
                                                                                                itemBuilder: (context, listViewIndex) {
                                                                                                  final listViewYemenmobileRecord = listViewYemenmobileRecordList[listViewIndex];
                                                                                                  return Padding(
                                                                                                    padding: EdgeInsetsDirectional.fromSTEB(0.0, 2.0, 0.0, 2.0),
                                                                                                    child: Container(
                                                                                                      width: double.infinity,
                                                                                                      decoration: BoxDecoration(
                                                                                                        color: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                                        border: Border.all(
                                                                                                          color: Color(0xFFAE0319),
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
                                                                                                                  color: Color(0xFF9F021E),
                                                                                                                  borderRadius: BorderRadius.circular(10.0),
                                                                                                                ),
                                                                                                                alignment: AlignmentDirectional(0.0, 0.0),
                                                                                                                child: Padding(
                                                                                                                  padding: EdgeInsetsDirectional.fromSTEB(10.0, 0.0, 5.0, 0.0),
                                                                                                                  child: Text(
                                                                                                                    listViewYemenmobileRecord.cost.toString(),
                                                                                                                    textAlign: TextAlign.center,
                                                                                                                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                                          fontFamily: 'Inter',
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
                                                                                                                  value: _model.checkboxListTileValueMap2[listViewYemenmobileRecord] ??= false,
                                                                                                                  onChanged: (newValue) async {
                                                                                                                    safeSetState(() => _model.checkboxListTileValueMap2[listViewYemenmobileRecord] = newValue!);
                                                                                                                    if (newValue!) {
                                                                                                                      safeSetState(() {
                                                                                                                        _model.priceTextController?.text = listViewYemenmobileRecord.amount.toString();
                                                                                                                      });
                                                                                                                      safeSetState(() {
                                                                                                                        _model.offerTextController?.text = listViewYemenmobileRecord.id;
                                                                                                                      });
                                                                                                                      safeSetState(() {
                                                                                                                        _model.ofernameTextController?.text = listViewYemenmobileRecord.name;
                                                                                                                      });
                                                                                                                      safeSetState(() {
                                                                                                                        _model.costTextController?.text = listViewYemenmobileRecord.cost.toString();
                                                                                                                      });
                                                                                                                      _model.numberref = random_data.randomInteger(2, 8).toString();
                                                                                                                      safeSetState(() {});
                                                                                                                    } else {
                                                                                                                      safeSetState(() {
                                                                                                                        _model.offerTextController?.clear();
                                                                                                                        _model.priceTextController?.clear();
                                                                                                                      });
                                                                                                                    }
                                                                                                                  },
                                                                                                                  title: Text(
                                                                                                                    listViewYemenmobileRecord.name,
                                                                                                                    textAlign: TextAlign.center,
                                                                                                                    style: FlutterFlowTheme.of(context).titleLarge.override(
                                                                                                                          fontFamily: 'Inter',
                                                                                                                          fontSize: 14.0,
                                                                                                                          letterSpacing: 0.0,
                                                                                                                        ),
                                                                                                                  ),
                                                                                                                  tileColor: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                                                  activeColor: Color(0xFF9C0027),
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
                                                                                ],
                                                                              ),
                                                                            ),
                                                                          ),
                                                                        ),
                                                                      ],
                                                                    ),
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
                                                                              _model.nqury = 29;
                                                                              safeSetState(() {});
                                                                            },
                                                                            child:
                                                                                Container(
                                                                              width: 390.0,
                                                                              decoration: BoxDecoration(
                                                                                color: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                borderRadius: BorderRadius.circular(12.0),
                                                                                border: Border.all(
                                                                                  color: _model.nqury == 29 ? Color(0xFFBF022A) : FlutterFlowTheme.of(context).secondaryBackground,
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
                                                                                                '10pix6e1' /* باقات فولتي فورجي */,
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
                                                                                  SingleChildScrollView(
                                                                                    child: Column(
                                                                                      mainAxisSize: MainAxisSize.max,
                                                                                      children: [
                                                                                        if (_model.nqury == 14)
                                                                                          StreamBuilder<List<YemenmobileRecord>>(
                                                                                            stream: queryYemenmobileRecord(
                                                                                              queryBuilder: (yemenmobileRecord) => yemenmobileRecord
                                                                                                  .where(
                                                                                                    'MANINAME',
                                                                                                    isEqualTo: 'باقات فولتي فورجي',
                                                                                                  )
                                                                                                  .where(
                                                                                                    'NETWORKTYPE',
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
                                                                                              List<YemenmobileRecord> listViewYemenmobileRecordList = snapshot.data!;

                                                                                              return ListView.builder(
                                                                                                padding: EdgeInsets.zero,
                                                                                                primary: false,
                                                                                                shrinkWrap: true,
                                                                                                scrollDirection: Axis.vertical,
                                                                                                itemCount: listViewYemenmobileRecordList.length,
                                                                                                itemBuilder: (context, listViewIndex) {
                                                                                                  final listViewYemenmobileRecord = listViewYemenmobileRecordList[listViewIndex];
                                                                                                  return Padding(
                                                                                                    padding: EdgeInsetsDirectional.fromSTEB(0.0, 2.0, 0.0, 2.0),
                                                                                                    child: Container(
                                                                                                      width: double.infinity,
                                                                                                      decoration: BoxDecoration(
                                                                                                        color: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                                        border: Border.all(
                                                                                                          color: Color(0xFFAD032D),
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
                                                                                                                  color: Color(0xFFA90334),
                                                                                                                  borderRadius: BorderRadius.circular(6.0),
                                                                                                                ),
                                                                                                                alignment: AlignmentDirectional(0.0, 0.0),
                                                                                                                child: Padding(
                                                                                                                  padding: EdgeInsetsDirectional.fromSTEB(10.0, 0.0, 5.0, 0.0),
                                                                                                                  child: Text(
                                                                                                                    listViewYemenmobileRecord.cost.toString(),
                                                                                                                    textAlign: TextAlign.center,
                                                                                                                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                                          fontFamily: 'Inter',
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
                                                                                                                  value: _model.checkboxListTileValueMap3[listViewYemenmobileRecord] ??= false,
                                                                                                                  onChanged: (newValue) async {
                                                                                                                    safeSetState(() => _model.checkboxListTileValueMap3[listViewYemenmobileRecord] = newValue!);
                                                                                                                    if (newValue!) {
                                                                                                                      safeSetState(() {
                                                                                                                        _model.priceTextController?.text = listViewYemenmobileRecord.amount.toString();
                                                                                                                      });
                                                                                                                      safeSetState(() {
                                                                                                                        _model.offerTextController?.text = listViewYemenmobileRecord.id;
                                                                                                                      });
                                                                                                                      safeSetState(() {
                                                                                                                        _model.ofernameTextController?.text = listViewYemenmobileRecord.name;
                                                                                                                      });
                                                                                                                      safeSetState(() {
                                                                                                                        _model.costTextController?.text = listViewYemenmobileRecord.cost.toString();
                                                                                                                      });
                                                                                                                      _model.numberref = random_data.randomInteger(2, 8).toString();
                                                                                                                      safeSetState(() {});
                                                                                                                    } else {
                                                                                                                      safeSetState(() {
                                                                                                                        _model.offerTextController?.clear();
                                                                                                                        _model.priceTextController?.clear();
                                                                                                                      });
                                                                                                                    }
                                                                                                                  },
                                                                                                                  title: Text(
                                                                                                                    listViewYemenmobileRecord.name,
                                                                                                                    textAlign: TextAlign.center,
                                                                                                                    style: FlutterFlowTheme.of(context).titleLarge.override(
                                                                                                                          fontFamily: 'Inter',
                                                                                                                          fontSize: 14.0,
                                                                                                                          letterSpacing: 0.0,
                                                                                                                        ),
                                                                                                                  ),
                                                                                                                  tileColor: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                                                  activeColor: Color(0xFF9C0027),
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
                                                                                ],
                                                                              ),
                                                                            ),
                                                                          ),
                                                                        ),
                                                                      ],
                                                                    ),
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
                                                                              _model.nqury = 29;
                                                                              safeSetState(() {});
                                                                            },
                                                                            child:
                                                                                Container(
                                                                              width: 390.0,
                                                                              decoration: BoxDecoration(
                                                                                color: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                borderRadius: BorderRadius.circular(12.0),
                                                                                border: Border.all(
                                                                                  color: _model.nqury == 111 ? Color(0xFFBF022A) : FlutterFlowTheme.of(context).secondaryBackground,
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
                                                                                                'wjalxggi' /* باقات داتا ثريجي */,
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
                                                                                  SingleChildScrollView(
                                                                                    child: Column(
                                                                                      mainAxisSize: MainAxisSize.max,
                                                                                      children: [
                                                                                        if (_model.nqury == 29)
                                                                                          StreamBuilder<List<YemenmobileRecord>>(
                                                                                            stream: queryYemenmobileRecord(
                                                                                              queryBuilder: (yemenmobileRecord) => yemenmobileRecord
                                                                                                  .where(
                                                                                                    'MANINAME',
                                                                                                    isEqualTo: 'باقات  داتا ثريجي',
                                                                                                  )
                                                                                                  .where(
                                                                                                    'NETWORKTYPE',
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
                                                                                              List<YemenmobileRecord> listViewYemenmobileRecordList = snapshot.data!;

                                                                                              return ListView.builder(
                                                                                                padding: EdgeInsets.zero,
                                                                                                primary: false,
                                                                                                shrinkWrap: true,
                                                                                                scrollDirection: Axis.vertical,
                                                                                                itemCount: listViewYemenmobileRecordList.length,
                                                                                                itemBuilder: (context, listViewIndex) {
                                                                                                  final listViewYemenmobileRecord = listViewYemenmobileRecordList[listViewIndex];
                                                                                                  return Padding(
                                                                                                    padding: EdgeInsetsDirectional.fromSTEB(0.0, 2.0, 0.0, 2.0),
                                                                                                    child: Container(
                                                                                                      width: double.infinity,
                                                                                                      decoration: BoxDecoration(
                                                                                                        color: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                                        border: Border.all(
                                                                                                          color: Color(0xFFAD032D),
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
                                                                                                                  color: Color(0xFFA90334),
                                                                                                                  borderRadius: BorderRadius.circular(6.0),
                                                                                                                ),
                                                                                                                alignment: AlignmentDirectional(0.0, 0.0),
                                                                                                                child: Padding(
                                                                                                                  padding: EdgeInsetsDirectional.fromSTEB(10.0, 0.0, 5.0, 0.0),
                                                                                                                  child: Text(
                                                                                                                    listViewYemenmobileRecord.cost.toString(),
                                                                                                                    textAlign: TextAlign.center,
                                                                                                                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                                          fontFamily: 'Inter',
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
                                                                                                                  value: _model.checkboxListTileValueMap4[listViewYemenmobileRecord] ??= false,
                                                                                                                  onChanged: (newValue) async {
                                                                                                                    safeSetState(() => _model.checkboxListTileValueMap4[listViewYemenmobileRecord] = newValue!);
                                                                                                                    if (newValue!) {
                                                                                                                      safeSetState(() {
                                                                                                                        _model.priceTextController?.text = listViewYemenmobileRecord.amount.toString();
                                                                                                                      });
                                                                                                                      safeSetState(() {
                                                                                                                        _model.offerTextController?.text = listViewYemenmobileRecord.id;
                                                                                                                      });
                                                                                                                      safeSetState(() {
                                                                                                                        _model.ofernameTextController?.text = listViewYemenmobileRecord.name;
                                                                                                                      });
                                                                                                                      safeSetState(() {
                                                                                                                        _model.costTextController?.text = listViewYemenmobileRecord.cost.toString();
                                                                                                                      });
                                                                                                                      _model.numberref = random_data.randomInteger(2, 8).toString();
                                                                                                                      safeSetState(() {});
                                                                                                                    } else {
                                                                                                                      safeSetState(() {
                                                                                                                        _model.offerTextController?.clear();
                                                                                                                        _model.priceTextController?.clear();
                                                                                                                      });
                                                                                                                    }
                                                                                                                  },
                                                                                                                  title: Text(
                                                                                                                    listViewYemenmobileRecord.name,
                                                                                                                    textAlign: TextAlign.center,
                                                                                                                    style: FlutterFlowTheme.of(context).titleLarge.override(
                                                                                                                          fontFamily: 'Inter',
                                                                                                                          fontSize: 14.0,
                                                                                                                          letterSpacing: 0.0,
                                                                                                                        ),
                                                                                                                  ),
                                                                                                                  tileColor: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                                                  activeColor: Color(0xFF9C0027),
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
                                                                                ],
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
                                                        ],
                                                      ),
                                                    ),
                                                    if (_model
                                                            .choiceChipsValue ==
                                                        'دفع مسبق')
                                                      Align(
                                                        alignment:
                                                            AlignmentDirectional(
                                                                0.0, 0.0),
                                                        child: Padding(
                                                          padding:
                                                              EdgeInsetsDirectional
                                                                  .fromSTEB(
                                                                      0.0,
                                                                      8.0,
                                                                      0.0,
                                                                      0.0),
                                                          child: Container(
                                                            width: 400.0,
                                                            height: 321.0,
                                                            decoration:
                                                                BoxDecoration(),
                                                            child: Column(
                                                              children: [
                                                                Align(
                                                                  alignment:
                                                                      Alignment(
                                                                          0.0,
                                                                          0),
                                                                  child:
                                                                      FlutterFlowButtonTabBar(
                                                                    useToggleButtonStyle:
                                                                        true,
                                                                    labelStyle: FlutterFlowTheme.of(
                                                                            context)
                                                                        .titleMedium
                                                                        .override(
                                                                          fontFamily:
                                                                              'Tajawal',
                                                                          letterSpacing:
                                                                              0.0,
                                                                        ),
                                                                    unselectedLabelStyle: FlutterFlowTheme.of(
                                                                            context)
                                                                        .titleMedium
                                                                        .override(
                                                                          fontFamily:
                                                                              'Inter',
                                                                          letterSpacing:
                                                                              0.0,
                                                                        ),
                                                                    labelColor:
                                                                        FlutterFlowTheme.of(context)
                                                                            .primaryText,
                                                                    unselectedLabelColor:
                                                                        FlutterFlowTheme.of(context)
                                                                            .secondaryText,
                                                                    backgroundColor:
                                                                        Color(
                                                                            0xFF98012E),
                                                                    unselectedBackgroundColor:
                                                                        FlutterFlowTheme.of(context)
                                                                            .alternate,
                                                                    borderColor:
                                                                        Color(
                                                                            0xFF98012E),
                                                                    unselectedBorderColor:
                                                                        FlutterFlowTheme.of(context)
                                                                            .alternate,
                                                                    borderWidth:
                                                                        2.0,
                                                                    borderRadius:
                                                                        8.0,
                                                                    elevation:
                                                                        0.0,
                                                                    buttonMargin:
                                                                        EdgeInsetsDirectional.fromSTEB(
                                                                            8.0,
                                                                            0.0,
                                                                            8.0,
                                                                            0.0),
                                                                    padding:
                                                                        EdgeInsets.all(
                                                                            2.0),
                                                                    tabs: [
                                                                      Tab(
                                                                        text: FFLocalizations.of(context)
                                                                            .getText(
                                                                          '9matjfc8' /* Offers */,
                                                                        ),
                                                                      ),
                                                                      Tab(
                                                                        text: FFLocalizations.of(context)
                                                                            .getText(
                                                                          '7p1mw6x9' /* Amount */,
                                                                        ),
                                                                      ),
                                                                    ],
                                                                    controller:
                                                                        _model
                                                                            .tabBarController,
                                                                    onTap:
                                                                        (i) async {
                                                                      [
                                                                        () async {
                                                                          safeSetState(
                                                                              () {
                                                                            _model.actioncodeTextController?.text =
                                                                                '4001';
                                                                          });
                                                                          _model.botton =
                                                                              101;
                                                                          safeSetState(
                                                                              () {});
                                                                        },
                                                                        () async {
                                                                          safeSetState(
                                                                              () {
                                                                            _model.actioncodeTextController?.text =
                                                                                '7100';
                                                                          });
                                                                          safeSetState(
                                                                              () {
                                                                            _model.ofernameTextController?.text =
                                                                                'مبلغ';
                                                                          });
                                                                          _model.botton =
                                                                              1000;
                                                                          safeSetState(
                                                                              () {});
                                                                        }
                                                                      ][i]();
                                                                    },
                                                                  ),
                                                                ),
                                                                Expanded(
                                                                  child:
                                                                      TabBarView(
                                                                    controller:
                                                                        _model
                                                                            .tabBarController,
                                                                    physics:
                                                                        const NeverScrollableScrollPhysics(),
                                                                    children: [
                                                                      Container(
                                                                        width:
                                                                            400.0,
                                                                        height:
                                                                            350.0,
                                                                        decoration:
                                                                            BoxDecoration(
                                                                          borderRadius:
                                                                              BorderRadius.circular(6.0),
                                                                        ),
                                                                        child:
                                                                            SingleChildScrollView(
                                                                          child:
                                                                              Column(
                                                                            mainAxisSize:
                                                                                MainAxisSize.max,
                                                                            children: [
                                                                              Column(
                                                                                mainAxisSize: MainAxisSize.max,
                                                                                children: [
                                                                                  Padding(
                                                                                    padding: EdgeInsetsDirectional.fromSTEB(0.0, 5.0, 0.0, 5.0),
                                                                                    child: InkWell(
                                                                                      splashColor: Colors.transparent,
                                                                                      focusColor: Colors.transparent,
                                                                                      hoverColor: Colors.transparent,
                                                                                      highlightColor: Colors.transparent,
                                                                                      onTap: () async {
                                                                                        _model.nqury = 2;
                                                                                        safeSetState(() {});
                                                                                      },
                                                                                      child: Container(
                                                                                        width: 390.0,
                                                                                        decoration: BoxDecoration(
                                                                                          color: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                          borderRadius: BorderRadius.circular(12.0),
                                                                                          border: Border.all(
                                                                                            color: _model.nqury == 2 ? Color(0xFFBF022A) : FlutterFlowTheme.of(context).secondaryBackground,
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
                                                                                                          '71hdjxdg' /* باقات ومزايا فورجي  */,
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
                                                                                            Container(
                                                                                              width: double.infinity,
                                                                                              decoration: BoxDecoration(),
                                                                                              child: Visibility(
                                                                                                visible: _model.nqury == 2,
                                                                                                child: StreamBuilder<List<YemenmobileRecord>>(
                                                                                                  stream: queryYemenmobileRecord(
                                                                                                    queryBuilder: (yemenmobileRecord) => yemenmobileRecord
                                                                                                        .where(
                                                                                                          'NETWORKTYPE',
                                                                                                          isEqualTo: 'دفع مسبق',
                                                                                                        )
                                                                                                        .where(
                                                                                                          'MANINAME',
                                                                                                          isEqualTo: 'باقات ومزايا فورجي',
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
                                                                                                    List<YemenmobileRecord> listViewYemenmobileRecordList = snapshot.data!;

                                                                                                    return ListView.builder(
                                                                                                      padding: EdgeInsets.zero,
                                                                                                      primary: false,
                                                                                                      shrinkWrap: true,
                                                                                                      scrollDirection: Axis.vertical,
                                                                                                      itemCount: listViewYemenmobileRecordList.length,
                                                                                                      itemBuilder: (context, listViewIndex) {
                                                                                                        final listViewYemenmobileRecord = listViewYemenmobileRecordList[listViewIndex];
                                                                                                        return Padding(
                                                                                                          padding: EdgeInsetsDirectional.fromSTEB(0.0, 2.0, 0.0, 2.0),
                                                                                                          child: Container(
                                                                                                            width: double.infinity,
                                                                                                            decoration: BoxDecoration(
                                                                                                              color: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                                              border: Border.all(
                                                                                                                color: Color(0xFFCE022B),
                                                                                                              ),
                                                                                                            ),
                                                                                                            child: Row(
                                                                                                              mainAxisSize: MainAxisSize.max,
                                                                                                              children: [
                                                                                                                Align(
                                                                                                                  alignment: AlignmentDirectional(0.0, 0.0),
                                                                                                                  child: Padding(
                                                                                                                    padding: EdgeInsetsDirectional.fromSTEB(10.0, 0.0, 5.0, 0.0),
                                                                                                                    child: Text(
                                                                                                                      listViewYemenmobileRecord.cost.toString(),
                                                                                                                      textAlign: TextAlign.center,
                                                                                                                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                                            fontFamily: 'Inter',
                                                                                                                            letterSpacing: 0.0,
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
                                                                                                                        value: _model.checkboxListTileValueMap5[listViewYemenmobileRecord] ??= false,
                                                                                                                        onChanged: (newValue) async {
                                                                                                                          safeSetState(() => _model.checkboxListTileValueMap5[listViewYemenmobileRecord] = newValue!);
                                                                                                                          if (newValue!) {
                                                                                                                            safeSetState(() {
                                                                                                                              _model.priceTextController?.text = listViewYemenmobileRecord.amount.toString();
                                                                                                                            });
                                                                                                                            safeSetState(() {
                                                                                                                              _model.offerTextController?.text = listViewYemenmobileRecord.id;
                                                                                                                            });
                                                                                                                            safeSetState(() {
                                                                                                                              _model.ofernameTextController?.text = listViewYemenmobileRecord.name;
                                                                                                                            });
                                                                                                                            safeSetState(() {
                                                                                                                              _model.costTextController?.text = listViewYemenmobileRecord.cost.toString();
                                                                                                                            });
                                                                                                                            _model.numberref = random_data.randomInteger(2, 8).toString();
                                                                                                                            safeSetState(() {});
                                                                                                                            _model.amt = listViewYemenmobileRecord.amount;
                                                                                                                            safeSetState(() {});
                                                                                                                            _model.cost = listViewYemenmobileRecord.cost;
                                                                                                                            safeSetState(() {});
                                                                                                                          } else {
                                                                                                                            safeSetState(() {
                                                                                                                              _model.offerTextController?.clear();
                                                                                                                            });
                                                                                                                          }
                                                                                                                        },
                                                                                                                        title: Text(
                                                                                                                          listViewYemenmobileRecord.name,
                                                                                                                          textAlign: TextAlign.center,
                                                                                                                          style: FlutterFlowTheme.of(context).titleLarge.override(
                                                                                                                                fontFamily: 'Inter',
                                                                                                                                fontSize: 14.0,
                                                                                                                                letterSpacing: 0.0,
                                                                                                                              ),
                                                                                                                        ),
                                                                                                                        tileColor: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                                                        activeColor: Color(0xFF9C0027),
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
                                                                                  Padding(
                                                                                    padding: EdgeInsetsDirectional.fromSTEB(0.0, 5.0, 0.0, 5.0),
                                                                                    child: InkWell(
                                                                                      splashColor: Colors.transparent,
                                                                                      focusColor: Colors.transparent,
                                                                                      hoverColor: Colors.transparent,
                                                                                      highlightColor: Colors.transparent,
                                                                                      onTap: () async {
                                                                                        _model.nqury = 4;
                                                                                        safeSetState(() {});
                                                                                      },
                                                                                      child: Container(
                                                                                        width: 390.0,
                                                                                        decoration: BoxDecoration(
                                                                                          color: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                          borderRadius: BorderRadius.circular(12.0),
                                                                                          border: Border.all(
                                                                                            color: _model.nqury == 4 ? Color(0xFFBF022A) : FlutterFlowTheme.of(context).secondaryBackground,
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
                                                                                                          'u8t1yef5' /* باقات ومزايا ثريجي */,
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
                                                                                            SingleChildScrollView(
                                                                                              child: Column(
                                                                                                mainAxisSize: MainAxisSize.max,
                                                                                                children: [
                                                                                                  if (_model.nqury == 4)
                                                                                                    StreamBuilder<List<YemenmobileRecord>>(
                                                                                                      stream: queryYemenmobileRecord(
                                                                                                        queryBuilder: (yemenmobileRecord) => yemenmobileRecord
                                                                                                            .where(
                                                                                                              'NETWORKTYPE',
                                                                                                              isEqualTo: 'دفع مسبق',
                                                                                                            )
                                                                                                            .where(
                                                                                                              'MANINAME',
                                                                                                              isEqualTo: 'باقات ومزايا ثريجي',
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
                                                                                                        List<YemenmobileRecord> listViewYemenmobileRecordList = snapshot.data!;

                                                                                                        return ListView.builder(
                                                                                                          padding: EdgeInsets.zero,
                                                                                                          primary: false,
                                                                                                          shrinkWrap: true,
                                                                                                          scrollDirection: Axis.vertical,
                                                                                                          itemCount: listViewYemenmobileRecordList.length,
                                                                                                          itemBuilder: (context, listViewIndex) {
                                                                                                            final listViewYemenmobileRecord = listViewYemenmobileRecordList[listViewIndex];
                                                                                                            return Padding(
                                                                                                              padding: EdgeInsetsDirectional.fromSTEB(0.0, 2.0, 0.0, 2.0),
                                                                                                              child: Container(
                                                                                                                width: double.infinity,
                                                                                                                decoration: BoxDecoration(
                                                                                                                  color: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                                                  border: Border.all(
                                                                                                                    color: Color(0xFFAE0319),
                                                                                                                  ),
                                                                                                                ),
                                                                                                                child: Row(
                                                                                                                  mainAxisSize: MainAxisSize.max,
                                                                                                                  children: [
                                                                                                                    Align(
                                                                                                                      alignment: AlignmentDirectional(0.0, 0.0),
                                                                                                                      child: Padding(
                                                                                                                        padding: EdgeInsetsDirectional.fromSTEB(10.0, 0.0, 5.0, 0.0),
                                                                                                                        child: Text(
                                                                                                                          listViewYemenmobileRecord.cost.toString(),
                                                                                                                          textAlign: TextAlign.center,
                                                                                                                          style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                                                fontFamily: 'Inter',
                                                                                                                                letterSpacing: 0.0,
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
                                                                                                                            value: _model.checkboxListTileValueMap6[listViewYemenmobileRecord] ??= false,
                                                                                                                            onChanged: (newValue) async {
                                                                                                                              safeSetState(() => _model.checkboxListTileValueMap6[listViewYemenmobileRecord] = newValue!);
                                                                                                                              if (newValue!) {
                                                                                                                                safeSetState(() {
                                                                                                                                  _model.priceTextController?.text = listViewYemenmobileRecord.amount.toString();
                                                                                                                                });
                                                                                                                                safeSetState(() {
                                                                                                                                  _model.offerTextController?.text = listViewYemenmobileRecord.id;
                                                                                                                                });
                                                                                                                                safeSetState(() {
                                                                                                                                  _model.ofernameTextController?.text = listViewYemenmobileRecord.name;
                                                                                                                                });
                                                                                                                                safeSetState(() {
                                                                                                                                  _model.costTextController?.text = listViewYemenmobileRecord.cost.toString();
                                                                                                                                });
                                                                                                                                _model.numberref = random_data.randomInteger(2, 8).toString();
                                                                                                                                safeSetState(() {});
                                                                                                                                _model.cost = listViewYemenmobileRecord.cost;
                                                                                                                                safeSetState(() {});
                                                                                                                                _model.amt = listViewYemenmobileRecord.amount;
                                                                                                                                safeSetState(() {});
                                                                                                                              } else {
                                                                                                                                safeSetState(() {
                                                                                                                                  _model.offerTextController?.clear();
                                                                                                                                  _model.priceTextController?.clear();
                                                                                                                                  _model.ofernameTextController?.clear();
                                                                                                                                });
                                                                                                                              }
                                                                                                                            },
                                                                                                                            title: Text(
                                                                                                                              listViewYemenmobileRecord.name,
                                                                                                                              textAlign: TextAlign.center,
                                                                                                                              style: FlutterFlowTheme.of(context).titleLarge.override(
                                                                                                                                    fontFamily: 'Inter',
                                                                                                                                    fontSize: 14.0,
                                                                                                                                    letterSpacing: 0.0,
                                                                                                                                  ),
                                                                                                                            ),
                                                                                                                            tileColor: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                                                            activeColor: Color(0xFF9C0027),
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
                                                                                  Padding(
                                                                                    padding: EdgeInsetsDirectional.fromSTEB(0.0, 5.0, 0.0, 5.0),
                                                                                    child: InkWell(
                                                                                      splashColor: Colors.transparent,
                                                                                      focusColor: Colors.transparent,
                                                                                      hoverColor: Colors.transparent,
                                                                                      highlightColor: Colors.transparent,
                                                                                      onTap: () async {
                                                                                        _model.nqury = 77;
                                                                                        safeSetState(() {});
                                                                                      },
                                                                                      child: Container(
                                                                                        width: 390.0,
                                                                                        decoration: BoxDecoration(
                                                                                          color: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                          borderRadius: BorderRadius.circular(12.0),
                                                                                          border: Border.all(
                                                                                            color: _model.nqury == 77 ? Color(0xFFBF022A) : FlutterFlowTheme.of(context).secondaryBackground,
                                                                                          ),
                                                                                        ),
                                                                                        child: Column(
                                                                                          mainAxisSize: MainAxisSize.max,
                                                                                          children: [
                                                                                            Column(
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
                                                                                                              'yjz5nmz8' /* باقات فولتي فورجي */,
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
                                                                                              ],
                                                                                            ),
                                                                                            if (_model.nqury == 77)
                                                                                              StreamBuilder<List<YemenmobileRecord>>(
                                                                                                stream: queryYemenmobileRecord(
                                                                                                  queryBuilder: (yemenmobileRecord) => yemenmobileRecord
                                                                                                      .where(
                                                                                                        'NETWORKTYPE',
                                                                                                        isEqualTo: 'دفع مسبق',
                                                                                                      )
                                                                                                      .where(
                                                                                                        'MANINAME',
                                                                                                        isEqualTo: 'باقات فولتي فورجي',
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
                                                                                                  List<YemenmobileRecord> listViewYemenmobileRecordList = snapshot.data!;

                                                                                                  return ListView.builder(
                                                                                                    padding: EdgeInsets.zero,
                                                                                                    primary: false,
                                                                                                    shrinkWrap: true,
                                                                                                    scrollDirection: Axis.vertical,
                                                                                                    itemCount: listViewYemenmobileRecordList.length,
                                                                                                    itemBuilder: (context, listViewIndex) {
                                                                                                      final listViewYemenmobileRecord = listViewYemenmobileRecordList[listViewIndex];
                                                                                                      return Padding(
                                                                                                        padding: EdgeInsetsDirectional.fromSTEB(0.0, 2.0, 0.0, 2.0),
                                                                                                        child: Container(
                                                                                                          width: double.infinity,
                                                                                                          decoration: BoxDecoration(
                                                                                                            color: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                                            border: Border.all(
                                                                                                              color: Color(0xFFAD032D),
                                                                                                            ),
                                                                                                          ),
                                                                                                          child: Row(
                                                                                                            mainAxisSize: MainAxisSize.max,
                                                                                                            children: [
                                                                                                              Align(
                                                                                                                alignment: AlignmentDirectional(0.0, 0.0),
                                                                                                                child: Padding(
                                                                                                                  padding: EdgeInsetsDirectional.fromSTEB(10.0, 0.0, 5.0, 0.0),
                                                                                                                  child: Text(
                                                                                                                    listViewYemenmobileRecord.cost.toString(),
                                                                                                                    textAlign: TextAlign.center,
                                                                                                                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                                          fontFamily: 'Inter',
                                                                                                                          letterSpacing: 0.0,
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
                                                                                                                      value: _model.checkboxListTileValueMap7[listViewYemenmobileRecord] ??= false,
                                                                                                                      onChanged: (newValue) async {
                                                                                                                        safeSetState(() => _model.checkboxListTileValueMap7[listViewYemenmobileRecord] = newValue!);
                                                                                                                        if (newValue!) {
                                                                                                                          safeSetState(() {
                                                                                                                            _model.priceTextController?.text = listViewYemenmobileRecord.amount.toString();
                                                                                                                          });
                                                                                                                          safeSetState(() {
                                                                                                                            _model.offerTextController?.text = listViewYemenmobileRecord.id;
                                                                                                                          });
                                                                                                                          safeSetState(() {
                                                                                                                            _model.ofernameTextController?.text = listViewYemenmobileRecord.name;
                                                                                                                          });
                                                                                                                          safeSetState(() {
                                                                                                                            _model.costTextController?.text = listViewYemenmobileRecord.cost.toString();
                                                                                                                          });
                                                                                                                          _model.numberref = random_data.randomInteger(2, 8).toString();
                                                                                                                          safeSetState(() {});
                                                                                                                          _model.amt = listViewYemenmobileRecord.amount;
                                                                                                                          safeSetState(() {});
                                                                                                                          _model.cost = listViewYemenmobileRecord.cost;
                                                                                                                          safeSetState(() {});
                                                                                                                        } else {
                                                                                                                          safeSetState(() {
                                                                                                                            _model.offerTextController?.clear();
                                                                                                                            _model.priceTextController?.clear();
                                                                                                                            _model.ofernameTextController?.clear();
                                                                                                                          });
                                                                                                                        }
                                                                                                                      },
                                                                                                                      title: Text(
                                                                                                                        listViewYemenmobileRecord.name,
                                                                                                                        textAlign: TextAlign.center,
                                                                                                                        style: FlutterFlowTheme.of(context).titleLarge.override(
                                                                                                                              fontFamily: 'Inter',
                                                                                                                              fontSize: 14.0,
                                                                                                                              letterSpacing: 0.0,
                                                                                                                            ),
                                                                                                                      ),
                                                                                                                      tileColor: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                                                      activeColor: Color(0xFF9C0027),
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
                                                                              Column(
                                                                                mainAxisSize: MainAxisSize.max,
                                                                                children: [
                                                                                  Padding(
                                                                                    padding: EdgeInsetsDirectional.fromSTEB(0.0, 5.0, 0.0, 5.0),
                                                                                    child: InkWell(
                                                                                      splashColor: Colors.transparent,
                                                                                      focusColor: Colors.transparent,
                                                                                      hoverColor: Colors.transparent,
                                                                                      highlightColor: Colors.transparent,
                                                                                      onTap: () async {
                                                                                        _model.nqury = 88;
                                                                                        safeSetState(() {});
                                                                                      },
                                                                                      child: Container(
                                                                                        width: 390.0,
                                                                                        decoration: BoxDecoration(
                                                                                          color: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                          borderRadius: BorderRadius.circular(12.0),
                                                                                          border: Border.all(
                                                                                            color: _model.nqury == 88 ? Color(0xFFBF022A) : FlutterFlowTheme.of(context).secondaryBackground,
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
                                                                                                          'mhjdl1mo' /* باقات داتا ثريجي */,
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
                                                                                            if (_model.nqury == 88)
                                                                                              StreamBuilder<List<YemenmobileRecord>>(
                                                                                                stream: queryYemenmobileRecord(
                                                                                                  queryBuilder: (yemenmobileRecord) => yemenmobileRecord
                                                                                                      .where(
                                                                                                        'MANINAME',
                                                                                                        isEqualTo: 'باقات داتا ثريجي',
                                                                                                      )
                                                                                                      .where(
                                                                                                        'NETWORKTYPE',
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
                                                                                                  List<YemenmobileRecord> listViewYemenmobileRecordList = snapshot.data!;

                                                                                                  return ListView.builder(
                                                                                                    padding: EdgeInsets.zero,
                                                                                                    primary: false,
                                                                                                    shrinkWrap: true,
                                                                                                    scrollDirection: Axis.vertical,
                                                                                                    itemCount: listViewYemenmobileRecordList.length,
                                                                                                    itemBuilder: (context, listViewIndex) {
                                                                                                      final listViewYemenmobileRecord = listViewYemenmobileRecordList[listViewIndex];
                                                                                                      return Padding(
                                                                                                        padding: EdgeInsetsDirectional.fromSTEB(0.0, 2.0, 0.0, 2.0),
                                                                                                        child: Container(
                                                                                                          width: double.infinity,
                                                                                                          decoration: BoxDecoration(
                                                                                                            color: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                                            border: Border.all(
                                                                                                              color: Color(0xFFAD032D),
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
                                                                                                                      color: Color(0xFFA90334),
                                                                                                                      borderRadius: BorderRadius.circular(6.0),
                                                                                                                    ),
                                                                                                                    alignment: AlignmentDirectional(0.0, 0.0),
                                                                                                                    child: Padding(
                                                                                                                      padding: EdgeInsetsDirectional.fromSTEB(10.0, 0.0, 5.0, 0.0),
                                                                                                                      child: Text(
                                                                                                                        listViewYemenmobileRecord.cost.toString(),
                                                                                                                        textAlign: TextAlign.center,
                                                                                                                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                                              fontFamily: 'Inter',
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
                                                                                                                      value: _model.checkboxListTileValueMap8[listViewYemenmobileRecord] ??= false,
                                                                                                                      onChanged: (newValue) async {
                                                                                                                        safeSetState(() => _model.checkboxListTileValueMap8[listViewYemenmobileRecord] = newValue!);
                                                                                                                        if (newValue!) {
                                                                                                                          safeSetState(() {
                                                                                                                            _model.priceTextController?.text = listViewYemenmobileRecord.amount.toString();
                                                                                                                          });
                                                                                                                          safeSetState(() {
                                                                                                                            _model.offerTextController?.text = listViewYemenmobileRecord.id;
                                                                                                                          });
                                                                                                                          safeSetState(() {
                                                                                                                            _model.ofernameTextController?.text = listViewYemenmobileRecord.name;
                                                                                                                          });
                                                                                                                          safeSetState(() {
                                                                                                                            _model.costTextController?.text = listViewYemenmobileRecord.cost.toString();
                                                                                                                          });
                                                                                                                          _model.numberref = random_data.randomInteger(2, 8).toString();
                                                                                                                          safeSetState(() {});
                                                                                                                        } else {
                                                                                                                          safeSetState(() {
                                                                                                                            _model.offerTextController?.clear();
                                                                                                                            _model.priceTextController?.clear();
                                                                                                                          });
                                                                                                                        }
                                                                                                                      },
                                                                                                                      title: Text(
                                                                                                                        listViewYemenmobileRecord.name,
                                                                                                                        textAlign: TextAlign.center,
                                                                                                                        style: FlutterFlowTheme.of(context).titleLarge.override(
                                                                                                                              fontFamily: 'Inter',
                                                                                                                              fontSize: 14.0,
                                                                                                                              letterSpacing: 0.0,
                                                                                                                            ),
                                                                                                                      ),
                                                                                                                      tileColor: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                                                      activeColor: Color(0xFF9C0027),
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
                                                                            ],
                                                                          ),
                                                                        ),
                                                                      ),
                                                                      Column(
                                                                        mainAxisSize:
                                                                            MainAxisSize.max,
                                                                        children: [
                                                                          Padding(
                                                                            padding: EdgeInsetsDirectional.fromSTEB(
                                                                                8.0,
                                                                                10.0,
                                                                                8.0,
                                                                                0.0),
                                                                            child:
                                                                                Container(
                                                                              width: 300.0,
                                                                              child: TextFormField(
                                                                                controller: _model.priceTextController,
                                                                                focusNode: _model.priceFocusNode,
                                                                                autofocus: true,
                                                                                obscureText: false,
                                                                                decoration: InputDecoration(
                                                                                  labelText: FFLocalizations.of(context).getText(
                                                                                    '4c3whwxn' /* المبلغ  */,
                                                                                  ),
                                                                                  labelStyle: FlutterFlowTheme.of(context).labelMedium.override(
                                                                                        fontFamily: 'Tajawal',
                                                                                        letterSpacing: 0.0,
                                                                                      ),
                                                                                  hintText: FFLocalizations.of(context).getText(
                                                                                    '4pqka3at' /* 200 */,
                                                                                  ),
                                                                                  hintStyle: FlutterFlowTheme.of(context).labelMedium.override(
                                                                                        fontFamily: 'Inter',
                                                                                        fontSize: 18.0,
                                                                                        letterSpacing: 0.0,
                                                                                        fontWeight: FontWeight.bold,
                                                                                      ),
                                                                                  enabledBorder: OutlineInputBorder(
                                                                                    borderSide: BorderSide(
                                                                                      color: FlutterFlowTheme.of(context).secondaryText,
                                                                                      width: 2.0,
                                                                                    ),
                                                                                    borderRadius: BorderRadius.circular(8.0),
                                                                                  ),
                                                                                  focusedBorder: OutlineInputBorder(
                                                                                    borderSide: BorderSide(
                                                                                      color: Color(0xFFA3011E),
                                                                                      width: 2.0,
                                                                                    ),
                                                                                    borderRadius: BorderRadius.circular(8.0),
                                                                                  ),
                                                                                  errorBorder: OutlineInputBorder(
                                                                                    borderSide: BorderSide(
                                                                                      color: FlutterFlowTheme.of(context).error,
                                                                                      width: 2.0,
                                                                                    ),
                                                                                    borderRadius: BorderRadius.circular(8.0),
                                                                                  ),
                                                                                  focusedErrorBorder: OutlineInputBorder(
                                                                                    borderSide: BorderSide(
                                                                                      color: FlutterFlowTheme.of(context).error,
                                                                                      width: 2.0,
                                                                                    ),
                                                                                    borderRadius: BorderRadius.circular(8.0),
                                                                                  ),
                                                                                ),
                                                                                style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                      fontFamily: 'Tajawal',
                                                                                      letterSpacing: 0.0,
                                                                                    ),
                                                                                keyboardType: const TextInputType.numberWithOptions(signed: true, decimal: true),
                                                                                validator: _model.priceTextControllerValidator.asValidator(context),
                                                                              ),
                                                                            ),
                                                                          ),
                                                                          Padding(
                                                                            padding: EdgeInsetsDirectional.fromSTEB(
                                                                                0.0,
                                                                                0.0,
                                                                                0.0,
                                                                                30.0),
                                                                            child:
                                                                                FFButtonWidget(
                                                                              onPressed: () async {
                                                                                if (_model.formKey.currentState == null || !_model.formKey.currentState!.validate()) {
                                                                                  return;
                                                                                }
                                                                                await showModalBottomSheet(
                                                                                  isScrollControlled: true,
                                                                                  backgroundColor: Colors.transparent,
                                                                                  enableDrag: false,
                                                                                  context: context,
                                                                                  builder: (context) {
                                                                                    return WebViewAware(
                                                                                      child: GestureDetector(
                                                                                        onTap: () => FocusScope.of(context).unfocus(),
                                                                                        child: Padding(
                                                                                          padding: MediaQuery.viewInsetsOf(context),
                                                                                          child: Container(
                                                                                            height: 500.0,
                                                                                            child: SureraseedyemenWidget(
                                                                                              ac: 7100,
                                                                                              sc: 42103,
                                                                                              sno: _model.textController9.text,
                                                                                              sac: '0',
                                                                                              ofernamer: 'مبلغ',
                                                                                              mt: 1,
                                                                                              numberref: int.tryParse(_model.numberrefTextController.text),
                                                                                              amt: double.tryParse(_model.priceTextController.text),
                                                                                              coast: double.tryParse(_model.priceTextController.text),
                                                                                              solfa: double.tryParse(_model.solfahTextController.text),
                                                                                              total: double.tryParse(_model.priceTextController.text),
                                                                                            ),
                                                                                          ),
                                                                                        ),
                                                                                      ),
                                                                                    );
                                                                                  },
                                                                                ).then((value) => safeSetState(() {}));
                                                                              },
                                                                              text: FFLocalizations.of(context).getText(
                                                                                '0v2nk2rw' /* متابعة  */,
                                                                              ),
                                                                              options: FFButtonOptions(
                                                                                width: 300.0,
                                                                                height: 40.0,
                                                                                padding: EdgeInsetsDirectional.fromSTEB(24.0, 0.0, 24.0, 0.0),
                                                                                iconPadding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                                                                                color: Color(0xFF008BB6),
                                                                                textStyle: FlutterFlowTheme.of(context).titleSmall.override(
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
                                            ],
                                          ),
                                          if (_model.botton == 101)
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      0.0, 0.0, 0.0, 30.0),
                                              child: FFButtonWidget(
                                                onPressed: () async {
                                                  if (_model.formKey
                                                              .currentState ==
                                                          null ||
                                                      !_model
                                                          .formKey.currentState!
                                                          .validate()) {
                                                    return;
                                                  }
                                                  await showModalBottomSheet(
                                                    isScrollControlled: true,
                                                    backgroundColor:
                                                        Colors.transparent,
                                                    enableDrag: false,
                                                    context: context,
                                                    builder: (context) {
                                                      return WebViewAware(
                                                        child: GestureDetector(
                                                          onTap: () =>
                                                              FocusScope.of(
                                                                      context)
                                                                  .unfocus(),
                                                          child: Padding(
                                                            padding: MediaQuery
                                                                .viewInsetsOf(
                                                                    context),
                                                            child: Container(
                                                              height: 500.0,
                                                              child:
                                                                  SureraseedyemenWidget(
                                                                ac: 7200,
                                                                sc: 42103,
                                                                sno: _model
                                                                    .textController9
                                                                    .text,
                                                                sac: _model
                                                                    .offerTextController
                                                                    .text,
                                                                ofernamer: _model
                                                                    .ofernameTextController
                                                                    .text,
                                                                mt: 1,
                                                                numberref: int
                                                                    .tryParse(_model
                                                                        .numberrefTextController
                                                                        .text),
                                                                amt: double
                                                                    .tryParse(_model
                                                                        .priceTextController
                                                                        .text),
                                                                coast: double
                                                                    .tryParse(_model
                                                                        .costTextController
                                                                        .text),
                                                                solfa: double
                                                                    .tryParse(_model
                                                                        .solfahTextController
                                                                        .text),
                                                                total:
                                                                    _model.cost,
                                                                numrefsolfah: int
                                                                    .tryParse(_model
                                                                        .numberrefsolfahTextController
                                                                        .text),
                                                              ),
                                                            ),
                                                          ),
                                                        ),
                                                      );
                                                    },
                                                  ).then((value) =>
                                                      safeSetState(() {}));
                                                },
                                                text:
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                  'k8ucknun' /* متابعة  */,
                                                ),
                                                options: FFButtonOptions(
                                                  width: 300.0,
                                                  height: 40.0,
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          24.0, 0.0, 24.0, 0.0),
                                                  iconPadding:
                                                      EdgeInsetsDirectional
                                                          .fromSTEB(0.0, 0.0,
                                                              0.0, 0.0),
                                                  color: Color(0xFF008BB6),
                                                  textStyle: FlutterFlowTheme
                                                          .of(context)
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
                                                  borderRadius:
                                                      BorderRadius.only(
                                                    bottomLeft:
                                                        Radius.circular(0.0),
                                                    bottomRight:
                                                        Radius.circular(0.0),
                                                    topLeft:
                                                        Radius.circular(10.0),
                                                    topRight:
                                                        Radius.circular(10.0),
                                                  ),
                                                ),
                                              ),
                                            ),
                                        ],
                                      ),
                                    ),
                                  ),
                                );
                              },
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
