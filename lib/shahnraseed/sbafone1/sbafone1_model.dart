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
import 'sbafone1_widget.dart' show Sbafone1Widget;
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:webviewx_plus/webviewx_plus.dart';

class Sbafone1Model extends FlutterFlowModel<Sbafone1Widget> {
  ///  Local state fields for this page.

  int? nqury = 1;

  String? subscribertype;

  int? actioncode;

  int? numerref;

  int? button = 20;

  int? inquiry = 0;

  ///  State fields for stateful widgets in this page.

  final formKey = GlobalKey<FormState>();
  // State field(s) for Subscriber widget.
  FocusNode? subscriberFocusNode;
  TextEditingController? subscriberTextController;
  String? Function(BuildContext, String?)? subscriberTextControllerValidator;
  // State field(s) for Action widget.
  FocusNode? actionFocusNode;
  TextEditingController? actionTextController;
  String? Function(BuildContext, String?)? actionTextControllerValidator;
  // State field(s) for numberref widget.
  FocusNode? numberrefFocusNode;
  TextEditingController? numberrefTextController;
  String? Function(BuildContext, String?)? numberrefTextControllerValidator;
  // State field(s) for nameoffer widget.
  FocusNode? nameofferFocusNode;
  TextEditingController? nameofferTextController;
  String? Function(BuildContext, String?)? nameofferTextControllerValidator;
  String? _nameofferTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return FFLocalizations.of(context).getText(
        'qv2n9bgn' /* اختر الباقة */,
      );
    }

    return null;
  }

  // State field(s) for mt widget.
  FocusNode? mtFocusNode;
  TextEditingController? mtTextController;
  String? Function(BuildContext, String?)? mtTextControllerValidator;
  // State field(s) for mt22 widget.
  FocusNode? mt22FocusNode;
  TextEditingController? mt22TextController;
  String? Function(BuildContext, String?)? mt22TextControllerValidator;
  // State field(s) for PRICE widget.
  FocusNode? priceFocusNode;
  TextEditingController? priceTextController;
  String? Function(BuildContext, String?)? priceTextControllerValidator;
  // State field(s) for COAST widget.
  FocusNode? coastFocusNode;
  TextEditingController? coastTextController;
  String? Function(BuildContext, String?)? coastTextControllerValidator;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode1;
  TextEditingController? textController9;
  String? Function(BuildContext, String?)? textController9Validator;
  String? _textController9Validator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return FFLocalizations.of(context).getText(
        'j52nqvha' /* Field is required */,
      );
    }

    if (val.length < 9) {
      return FFLocalizations.of(context).getText(
        '6xt2czug' /* الرجاء ادخال الرقم بطريقة صحيح... */,
      );
    }
    if (val.length > 9) {
      return FFLocalizations.of(context).getText(
        'j64tnvaj' /* الرجاء ادخال الرقم بطريقة صحيح... */,
      );
    }

    return null;
  }

  // State field(s) for ChoiceChips widget.
  FormFieldController<List<String>>? choiceChipsValueController;
  String? get choiceChipsValue =>
      choiceChipsValueController?.value?.firstOrNull;
  set choiceChipsValue(String? val) =>
      choiceChipsValueController?.value = val != null ? [val] : [];
  // State field(s) for TabBar widget.
  TabController? tabBarController1;
  int get tabBarCurrentIndex1 =>
      tabBarController1 != null ? tabBarController1!.index : 0;

  // State field(s) for CheckboxListTile widget.
  Map<SabafonRecord, bool> checkboxListTileValueMap1 = {};
  List<SabafonRecord> get checkboxListTileCheckedItems1 =>
      checkboxListTileValueMap1.entries
          .where((e) => e.value)
          .map((e) => e.key)
          .toList();

  // State field(s) for CheckboxListTile widget.
  Map<SabafonRecord, bool> checkboxListTileValueMap2 = {};
  List<SabafonRecord> get checkboxListTileCheckedItems2 =>
      checkboxListTileValueMap2.entries
          .where((e) => e.value)
          .map((e) => e.key)
          .toList();

  // State field(s) for CheckboxListTile widget.
  Map<SabafonRecord, bool> checkboxListTileValueMap3 = {};
  List<SabafonRecord> get checkboxListTileCheckedItems3 =>
      checkboxListTileValueMap3.entries
          .where((e) => e.value)
          .map((e) => e.key)
          .toList();

  // State field(s) for amont widget.
  FocusNode? amontFocusNode;
  TextEditingController? amontTextController;
  String? Function(BuildContext, String?)? amontTextControllerValidator;
  // State field(s) for TabBar widget.
  TabController? tabBarController2;
  int get tabBarCurrentIndex2 =>
      tabBarController2 != null ? tabBarController2!.index : 0;

  // State field(s) for CheckboxListTile widget.
  Map<SabafonRecord, bool> checkboxListTileValueMap4 = {};
  List<SabafonRecord> get checkboxListTileCheckedItems4 =>
      checkboxListTileValueMap4.entries
          .where((e) => e.value)
          .map((e) => e.key)
          .toList();

  // State field(s) for CheckboxListTile widget.
  Map<SabafonRecord, bool> checkboxListTileValueMap5 = {};
  List<SabafonRecord> get checkboxListTileCheckedItems5 =>
      checkboxListTileValueMap5.entries
          .where((e) => e.value)
          .map((e) => e.key)
          .toList();

  // State field(s) for CheckboxListTile widget.
  Map<SabafonRecord, bool> checkboxListTileValueMap6 = {};
  List<SabafonRecord> get checkboxListTileCheckedItems6 =>
      checkboxListTileValueMap6.entries
          .where((e) => e.value)
          .map((e) => e.key)
          .toList();

  // State field(s) for CheckboxListTile widget.
  Map<SabafonRecord, bool> checkboxListTileValueMap7 = {};
  List<SabafonRecord> get checkboxListTileCheckedItems7 =>
      checkboxListTileValueMap7.entries
          .where((e) => e.value)
          .map((e) => e.key)
          .toList();

  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode2;
  TextEditingController? textController11;
  String? Function(BuildContext, String?)? textController11Validator;

  @override
  void initState(BuildContext context) {
    nameofferTextControllerValidator = _nameofferTextControllerValidator;
    textController9Validator = _textController9Validator;
  }

  @override
  void dispose() {
    subscriberFocusNode?.dispose();
    subscriberTextController?.dispose();

    actionFocusNode?.dispose();
    actionTextController?.dispose();

    numberrefFocusNode?.dispose();
    numberrefTextController?.dispose();

    nameofferFocusNode?.dispose();
    nameofferTextController?.dispose();

    mtFocusNode?.dispose();
    mtTextController?.dispose();

    mt22FocusNode?.dispose();
    mt22TextController?.dispose();

    priceFocusNode?.dispose();
    priceTextController?.dispose();

    coastFocusNode?.dispose();
    coastTextController?.dispose();

    textFieldFocusNode1?.dispose();
    textController9?.dispose();

    tabBarController1?.dispose();
    amontFocusNode?.dispose();
    amontTextController?.dispose();

    tabBarController2?.dispose();
    textFieldFocusNode2?.dispose();
    textController11?.dispose();
  }
}
