import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import '/pay4g/added/added_widget.dart';
import 'addpacag_widget.dart' show AddpacagWidget;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:webviewx_plus/webviewx_plus.dart';

class AddpacagModel extends FlutterFlowModel<AddpacagWidget> {
  ///  State fields for stateful widgets in this page.

  final formKey = GlobalKey<FormState>();
  // State field(s) for name widget.
  FocusNode? nameFocusNode;
  TextEditingController? nameTextController;
  String? Function(BuildContext, String?)? nameTextControllerValidator;
  String? _nameTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return FFLocalizations.of(context).getText(
        'rto4cpmg' /* Field is required */,
      );
    }

    return null;
  }

  // State field(s) for namepackage widget.
  FocusNode? namepackageFocusNode;
  TextEditingController? namepackageTextController;
  String? Function(BuildContext, String?)? namepackageTextControllerValidator;
  String? _namepackageTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return FFLocalizations.of(context).getText(
        '48ejtqqd' /* Field is required */,
      );
    }

    return null;
  }

  // State field(s) for DropDown widget.
  String? dropDownValue;
  FormFieldController<String>? dropDownValueController;
  // State field(s) for LOCATION widget.
  String? locationValue;
  FormFieldController<String>? locationValueController;
  // State field(s) for Password widget.
  String? passwordValue;
  FormFieldController<String>? passwordValueController;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode1;
  TextEditingController? textController3;
  String? Function(BuildContext, String?)? textController3Validator;
  // State field(s) for pricerial widget.
  FocusNode? pricerialFocusNode;
  TextEditingController? pricerialTextController;
  String? Function(BuildContext, String?)? pricerialTextControllerValidator;
  String? _pricerialTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return FFLocalizations.of(context).getText(
        'd24q7kip' /* Field is required */,
      );
    }

    return null;
  }

  // State field(s) for price widget.
  FocusNode? priceFocusNode;
  TextEditingController? priceTextController;
  String? Function(BuildContext, String?)? priceTextControllerValidator;
  String? _priceTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return FFLocalizations.of(context).getText(
        'ib6im0ol' /* Field is required */,
      );
    }

    return null;
  }

  // State field(s) for server widget.
  FocusNode? serverFocusNode;
  TextEditingController? serverTextController;
  String? Function(BuildContext, String?)? serverTextControllerValidator;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode2;
  TextEditingController? textController7;
  String? Function(BuildContext, String?)? textController7Validator;
  // State field(s) for notes widget.
  FocusNode? notesFocusNode;
  TextEditingController? notesTextController;
  String? Function(BuildContext, String?)? notesTextControllerValidator;
  // Stores action output result for [Backend Call - Create Document] action in Button widget.
  ProductRecord? newProperty;

  @override
  void initState(BuildContext context) {
    nameTextControllerValidator = _nameTextControllerValidator;
    namepackageTextControllerValidator = _namepackageTextControllerValidator;
    pricerialTextControllerValidator = _pricerialTextControllerValidator;
    priceTextControllerValidator = _priceTextControllerValidator;
  }

  @override
  void dispose() {
    nameFocusNode?.dispose();
    nameTextController?.dispose();

    namepackageFocusNode?.dispose();
    namepackageTextController?.dispose();

    textFieldFocusNode1?.dispose();
    textController3?.dispose();

    pricerialFocusNode?.dispose();
    pricerialTextController?.dispose();

    priceFocusNode?.dispose();
    priceTextController?.dispose();

    serverFocusNode?.dispose();
    serverTextController?.dispose();

    textFieldFocusNode2?.dispose();
    textController7?.dispose();

    notesFocusNode?.dispose();
    notesTextController?.dispose();
  }
}
