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
import 'yemenmobile_widget.dart' show YemenmobileWidget;
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:webviewx_plus/webviewx_plus.dart';

class YemenmobileModel extends FlutterFlowModel<YemenmobileWidget> {
  ///  Local state fields for this page.

  int? nqury = 1;

  String? yemen77;

  String? numberref;

  int botton = 101;

  int? mt = 1;

  int? inqury;

  int? estelam;

  String? loan;

  double? cost;

  double? amt;

  ///  State fields for stateful widgets in this page.

  final formKey = GlobalKey<FormState>();
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode1;
  TextEditingController? textController1;
  String? Function(BuildContext, String?)? textController1Validator;
  // State field(s) for offer widget.
  FocusNode? offerFocusNode;
  TextEditingController? offerTextController;
  String? Function(BuildContext, String?)? offerTextControllerValidator;
  // State field(s) for Actioncode widget.
  FocusNode? actioncodeFocusNode;
  TextEditingController? actioncodeTextController;
  String? Function(BuildContext, String?)? actioncodeTextControllerValidator;
  // State field(s) for ofername widget.
  FocusNode? ofernameFocusNode;
  TextEditingController? ofernameTextController;
  String? Function(BuildContext, String?)? ofernameTextControllerValidator;
  String? _ofernameTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return FFLocalizations.of(context).getText(
        'epu1q3zl' /* Field is required */,
      );
    }

    return null;
  }

  // State field(s) for numberref widget.
  FocusNode? numberrefFocusNode;
  TextEditingController? numberrefTextController;
  String? Function(BuildContext, String?)? numberrefTextControllerValidator;
  // State field(s) for numberrefsolfah widget.
  FocusNode? numberrefsolfahFocusNode;
  TextEditingController? numberrefsolfahTextController;
  String? Function(BuildContext, String?)?
      numberrefsolfahTextControllerValidator;
  // State field(s) for cost widget.
  FocusNode? costFocusNode;
  TextEditingController? costTextController;
  String? Function(BuildContext, String?)? costTextControllerValidator;
  // State field(s) for solfah widget.
  FocusNode? solfahFocusNode;
  TextEditingController? solfahTextController;
  String? Function(BuildContext, String?)? solfahTextControllerValidator;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode2;
  TextEditingController? textController9;
  String? Function(BuildContext, String?)? textController9Validator;
  String? _textController9Validator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return FFLocalizations.of(context).getText(
        'up9jm9fc' /* Field is required */,
      );
    }

    if (val.length < 9) {
      return FFLocalizations.of(context).getText(
        'lhs3lqs0' /* الرجاء ادخال الرقم بطريقة صحيح... */,
      );
    }
    if (val.length > 9) {
      return FFLocalizations.of(context).getText(
        '7o8r5gq3' /* الرجاء ادخال الرقم بطريقة صحيح... */,
      );
    }

    return null;
  }

  // State field(s) for loanchech widget.
  bool? loanchechValue;
  // State field(s) for ChoiceChips widget.
  FormFieldController<List<String>>? choiceChipsValueController;
  String? get choiceChipsValue =>
      choiceChipsValueController?.value?.firstOrNull;
  set choiceChipsValue(String? val) =>
      choiceChipsValueController?.value = val != null ? [val] : [];
  // State field(s) for CheckboxListTile widget.
  Map<YemenmobileRecord, bool> checkboxListTileValueMap1 = {};
  List<YemenmobileRecord> get checkboxListTileCheckedItems1 =>
      checkboxListTileValueMap1.entries
          .where((e) => e.value)
          .map((e) => e.key)
          .toList();

  // State field(s) for CheckboxListTile widget.
  Map<YemenmobileRecord, bool> checkboxListTileValueMap2 = {};
  List<YemenmobileRecord> get checkboxListTileCheckedItems2 =>
      checkboxListTileValueMap2.entries
          .where((e) => e.value)
          .map((e) => e.key)
          .toList();

  // State field(s) for CheckboxListTile widget.
  Map<YemenmobileRecord, bool> checkboxListTileValueMap3 = {};
  List<YemenmobileRecord> get checkboxListTileCheckedItems3 =>
      checkboxListTileValueMap3.entries
          .where((e) => e.value)
          .map((e) => e.key)
          .toList();

  // State field(s) for CheckboxListTile widget.
  Map<YemenmobileRecord, bool> checkboxListTileValueMap4 = {};
  List<YemenmobileRecord> get checkboxListTileCheckedItems4 =>
      checkboxListTileValueMap4.entries
          .where((e) => e.value)
          .map((e) => e.key)
          .toList();

  // State field(s) for TabBar widget.
  TabController? tabBarController;
  int get tabBarCurrentIndex =>
      tabBarController != null ? tabBarController!.index : 0;

  // State field(s) for CheckboxListTile widget.
  Map<YemenmobileRecord, bool> checkboxListTileValueMap5 = {};
  List<YemenmobileRecord> get checkboxListTileCheckedItems5 =>
      checkboxListTileValueMap5.entries
          .where((e) => e.value)
          .map((e) => e.key)
          .toList();

  // State field(s) for CheckboxListTile widget.
  Map<YemenmobileRecord, bool> checkboxListTileValueMap6 = {};
  List<YemenmobileRecord> get checkboxListTileCheckedItems6 =>
      checkboxListTileValueMap6.entries
          .where((e) => e.value)
          .map((e) => e.key)
          .toList();

  // State field(s) for CheckboxListTile widget.
  Map<YemenmobileRecord, bool> checkboxListTileValueMap7 = {};
  List<YemenmobileRecord> get checkboxListTileCheckedItems7 =>
      checkboxListTileValueMap7.entries
          .where((e) => e.value)
          .map((e) => e.key)
          .toList();

  // State field(s) for CheckboxListTile widget.
  Map<YemenmobileRecord, bool> checkboxListTileValueMap8 = {};
  List<YemenmobileRecord> get checkboxListTileCheckedItems8 =>
      checkboxListTileValueMap8.entries
          .where((e) => e.value)
          .map((e) => e.key)
          .toList();

  // State field(s) for PRICE widget.
  FocusNode? priceFocusNode;
  TextEditingController? priceTextController;
  String? Function(BuildContext, String?)? priceTextControllerValidator;
  String? _priceTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return FFLocalizations.of(context).getText(
        'v4eguufe' /* المبلغ غير صحيح */,
      );
    }

    if (val.length < 3) {
      return 'Requires at least 3 characters.';
    }

    return null;
  }

  @override
  void initState(BuildContext context) {
    ofernameTextControllerValidator = _ofernameTextControllerValidator;
    textController9Validator = _textController9Validator;
    priceTextControllerValidator = _priceTextControllerValidator;
  }

  @override
  void dispose() {
    textFieldFocusNode1?.dispose();
    textController1?.dispose();

    offerFocusNode?.dispose();
    offerTextController?.dispose();

    actioncodeFocusNode?.dispose();
    actioncodeTextController?.dispose();

    ofernameFocusNode?.dispose();
    ofernameTextController?.dispose();

    numberrefFocusNode?.dispose();
    numberrefTextController?.dispose();

    numberrefsolfahFocusNode?.dispose();
    numberrefsolfahTextController?.dispose();

    costFocusNode?.dispose();
    costTextController?.dispose();

    solfahFocusNode?.dispose();
    solfahTextController?.dispose();

    textFieldFocusNode2?.dispose();
    textController9?.dispose();

    tabBarController?.dispose();
    priceFocusNode?.dispose();
    priceTextController?.dispose();
  }
}
