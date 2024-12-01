import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import 'dart:math';
import 'addofer_widget.dart' show AddoferWidget;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class AddoferModel extends FlutterFlowModel<AddoferWidget> {
  ///  State fields for stateful widgets in this page.

  final formKey1 = GlobalKey<FormState>();
  final formKey2 = GlobalKey<FormState>();
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode1;
  TextEditingController? textController1;
  String? Function(BuildContext, String?)? textController1Validator;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode2;
  TextEditingController? textController2;
  String? Function(BuildContext, String?)? textController2Validator;
  // State field(s) for TabBar widget.
  TabController? tabBarController;
  int get tabBarCurrentIndex =>
      tabBarController != null ? tabBarController!.index : 0;

  // State field(s) for ymobile widget.
  String? ymobileValue;
  FormFieldController<String>? ymobileValueController;
  // State field(s) for sabaph widget.
  String? sabaphValue;
  FormFieldController<String>? sabaphValueController;
  // State field(s) for youu widget.
  String? youuValue1;
  FormFieldController<String>? youuValueController1;
  // State field(s) for yai widget.
  String? yaiValue1;
  FormFieldController<String>? yaiValueController1;
  // State field(s) for name widget.
  FocusNode? nameFocusNode1;
  TextEditingController? nameTextController1;
  String? Function(BuildContext, String?)? nameTextController1Validator;
  String? _nameTextController1Validator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return FFLocalizations.of(context).getText(
        'ggpyfq9u' /* الحقل مطلوب */,
      );
    }

    return null;
  }

  // State field(s) for price widget.
  FocusNode? priceFocusNode1;
  TextEditingController? priceTextController1;
  String? Function(BuildContext, String?)? priceTextController1Validator;
  String? _priceTextController1Validator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return FFLocalizations.of(context).getText(
        'rxp9jj7i' /* الحقل مطلوب */,
      );
    }

    return null;
  }

  // State field(s) for cost widget.
  FocusNode? costFocusNode1;
  TextEditingController? costTextController1;
  String? Function(BuildContext, String?)? costTextController1Validator;
  // State field(s) for id12 widget.
  FocusNode? id12FocusNode;
  TextEditingController? id12TextController;
  String? Function(BuildContext, String?)? id12TextControllerValidator;
  String? _id12TextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return FFLocalizations.of(context).getText(
        '6mfsonbr' /* الحقل مطلوب */,
      );
    }

    return null;
  }

  // State field(s) for youu widget.
  String? youuValue2;
  FormFieldController<String>? youuValueController2;
  // State field(s) for sabsph333 widget.
  String? sabsph333Value;
  FormFieldController<String>? sabsph333ValueController;
  // State field(s) for yai widget.
  String? yaiValue2;
  FormFieldController<String>? yaiValueController2;
  // State field(s) for name widget.
  FocusNode? nameFocusNode2;
  TextEditingController? nameTextController2;
  String? Function(BuildContext, String?)? nameTextController2Validator;
  String? _nameTextController2Validator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return FFLocalizations.of(context).getText(
        'phjmk550' /* الحقل مطلوب */,
      );
    }

    return null;
  }

  // State field(s) for price widget.
  FocusNode? priceFocusNode2;
  TextEditingController? priceTextController2;
  String? Function(BuildContext, String?)? priceTextController2Validator;
  String? _priceTextController2Validator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return FFLocalizations.of(context).getText(
        'qxwipf6h' /* الحقل مطلوب */,
      );
    }

    return null;
  }

  // State field(s) for cost widget.
  FocusNode? costFocusNode2;
  TextEditingController? costTextController2;
  String? Function(BuildContext, String?)? costTextController2Validator;
  // State field(s) for id45 widget.
  FocusNode? id45FocusNode;
  TextEditingController? id45TextController;
  String? Function(BuildContext, String?)? id45TextControllerValidator;
  String? _id45TextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return FFLocalizations.of(context).getText(
        '1mufsjv1' /* الحقل مطلوب */,
      );
    }

    return null;
  }

  // State field(s) for youu22 widget.
  String? youu22Value;
  FormFieldController<String>? youu22ValueController;
  // State field(s) for sabsph widget.
  String? sabsphValue;
  FormFieldController<String>? sabsphValueController;
  // State field(s) for name22 widget.
  FocusNode? name22FocusNode;
  TextEditingController? name22TextController;
  String? Function(BuildContext, String?)? name22TextControllerValidator;
  // State field(s) for price22 widget.
  FocusNode? price22FocusNode;
  TextEditingController? price22TextController;
  String? Function(BuildContext, String?)? price22TextControllerValidator;
  // State field(s) for cost22 widget.
  FocusNode? cost22FocusNode;
  TextEditingController? cost22TextController;
  String? Function(BuildContext, String?)? cost22TextControllerValidator;
  // State field(s) for id4522 widget.
  FocusNode? id4522FocusNode;
  TextEditingController? id4522TextController;
  String? Function(BuildContext, String?)? id4522TextControllerValidator;

  @override
  void initState(BuildContext context) {
    nameTextController1Validator = _nameTextController1Validator;
    priceTextController1Validator = _priceTextController1Validator;
    id12TextControllerValidator = _id12TextControllerValidator;
    nameTextController2Validator = _nameTextController2Validator;
    priceTextController2Validator = _priceTextController2Validator;
    id45TextControllerValidator = _id45TextControllerValidator;
  }

  @override
  void dispose() {
    textFieldFocusNode1?.dispose();
    textController1?.dispose();

    textFieldFocusNode2?.dispose();
    textController2?.dispose();

    tabBarController?.dispose();
    nameFocusNode1?.dispose();
    nameTextController1?.dispose();

    priceFocusNode1?.dispose();
    priceTextController1?.dispose();

    costFocusNode1?.dispose();
    costTextController1?.dispose();

    id12FocusNode?.dispose();
    id12TextController?.dispose();

    nameFocusNode2?.dispose();
    nameTextController2?.dispose();

    priceFocusNode2?.dispose();
    priceTextController2?.dispose();

    costFocusNode2?.dispose();
    costTextController2?.dispose();

    id45FocusNode?.dispose();
    id45TextController?.dispose();

    name22FocusNode?.dispose();
    name22TextController?.dispose();

    price22FocusNode?.dispose();
    price22TextController?.dispose();

    cost22FocusNode?.dispose();
    cost22TextController?.dispose();

    id4522FocusNode?.dispose();
    id4522TextController?.dispose();
  }
}
