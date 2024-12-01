import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/pay4g/done/done_widget.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import '/flutter_flow/random_data_util.dart' as random_data;
import 'daitail_widget.dart' show DaitailWidget;
import 'package:auto_size_text/auto_size_text.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:webviewx_plus/webviewx_plus.dart';

class DaitailModel extends FlutterFlowModel<DaitailWidget> {
  ///  State fields for stateful widgets in this page.

  final formKey = GlobalKey<FormState>();
  // State field(s) for PACKAGE widget.
  FocusNode? packageFocusNode;
  TextEditingController? packageTextController;
  String? Function(BuildContext, String?)? packageTextControllerValidator;
  // State field(s) for PRICED widget.
  FocusNode? pricedFocusNode;
  TextEditingController? pricedTextController;
  String? Function(BuildContext, String?)? pricedTextControllerValidator;
  // State field(s) for PRICER widget.
  FocusNode? pricerFocusNode;
  TextEditingController? pricerTextController;
  String? Function(BuildContext, String?)? pricerTextControllerValidator;
  // State field(s) for ID widget.
  FocusNode? idFocusNode;
  TextEditingController? idTextController;
  String? Function(BuildContext, String?)? idTextControllerValidator;
  String? _idTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return FFLocalizations.of(context).getText(
        'rzs7682r' /* Field is required */,
      );
    }

    return null;
  }

  // State field(s) for CODE widget.
  FocusNode? codeFocusNode;
  TextEditingController? codeTextController;
  String? Function(BuildContext, String?)? codeTextControllerValidator;
  String? _codeTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return FFLocalizations.of(context).getText(
        '7zmefvi4' /* Field is required */,
      );
    }

    return null;
  }

  // State field(s) for CARDS widget.
  FocusNode? cardsFocusNode;
  TextEditingController? cardsTextController;
  String? Function(BuildContext, String?)? cardsTextControllerValidator;
  String? _cardsTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return FFLocalizations.of(context).getText(
        'z99k4htk' /* Field is required */,
      );
    }

    return null;
  }

  // State field(s) for whatsapp widget.
  FocusNode? whatsappFocusNode;
  TextEditingController? whatsappTextController;
  String? Function(BuildContext, String?)? whatsappTextControllerValidator;
  String? _whatsappTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return FFLocalizations.of(context).getText(
        'o6lpuveq' /* Field is required */,
      );
    }

    return null;
  }

  // State field(s) for PASS widget.
  FocusNode? passFocusNode;
  TextEditingController? passTextController;
  late bool passVisibility;
  String? Function(BuildContext, String?)? passTextControllerValidator;
  String? _passTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return FFLocalizations.of(context).getText(
        '80tp0ye4' /* Field is required */,
      );
    }

    return null;
  }

  // Stores action output result for [Backend Call - Create Document] action in Button widget.
  OrderRecord? pagoRef;
  // Stores action output result for [Backend Call - Create Document] action in Button widget.
  OrderRecord? pagoRef11;
  // State field(s) for NAME widget.
  FocusNode? nameFocusNode;
  TextEditingController? nameTextController;
  String? Function(BuildContext, String?)? nameTextControllerValidator;

  @override
  void initState(BuildContext context) {
    idTextControllerValidator = _idTextControllerValidator;
    codeTextControllerValidator = _codeTextControllerValidator;
    cardsTextControllerValidator = _cardsTextControllerValidator;
    whatsappTextControllerValidator = _whatsappTextControllerValidator;
    passVisibility = false;
    passTextControllerValidator = _passTextControllerValidator;
  }

  @override
  void dispose() {
    packageFocusNode?.dispose();
    packageTextController?.dispose();

    pricedFocusNode?.dispose();
    pricedTextController?.dispose();

    pricerFocusNode?.dispose();
    pricerTextController?.dispose();

    idFocusNode?.dispose();
    idTextController?.dispose();

    codeFocusNode?.dispose();
    codeTextController?.dispose();

    cardsFocusNode?.dispose();
    cardsTextController?.dispose();

    whatsappFocusNode?.dispose();
    whatsappTextController?.dispose();

    passFocusNode?.dispose();
    passTextController?.dispose();

    nameFocusNode?.dispose();
    nameTextController?.dispose();
  }
}
