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
import 'you_widget.dart' show YouWidget;
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:webviewx_plus/webviewx_plus.dart';

class YouModel extends FlutterFlowModel<YouWidget> {
  ///  Local state fields for this page.

  int? nqury = 1;

  String? subscribertype;

  int? actioncode;

  int? numerref;

  int? button = 20;

  int? inquiry = 0;

  ///  State fields for stateful widgets in this page.

  final formKey = GlobalKey<FormState>();
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode1;
  TextEditingController? textController1;
  String? Function(BuildContext, String?)? textController1Validator;
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
        'tb8xuopl' /* اختر الباقة */,
      );
    }

    return null;
  }

  // State field(s) for mt widget.
  FocusNode? mtFocusNode;
  TextEditingController? mtTextController;
  String? Function(BuildContext, String?)? mtTextControllerValidator;
  // State field(s) for PRICE widget.
  FocusNode? priceFocusNode;
  TextEditingController? priceTextController;
  String? Function(BuildContext, String?)? priceTextControllerValidator;
  // State field(s) for cost widget.
  FocusNode? costFocusNode;
  TextEditingController? costTextController;
  String? Function(BuildContext, String?)? costTextControllerValidator;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode2;
  TextEditingController? textController9;
  String? Function(BuildContext, String?)? textController9Validator;
  String? _textController9Validator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return FFLocalizations.of(context).getText(
        '3aybpu2w' /* Field is required */,
      );
    }

    if (val.length < 9) {
      return FFLocalizations.of(context).getText(
        't3rzagst' /* الرجاء ادخال الرقم بطريقة صحيح... */,
      );
    }
    if (val.length > 9) {
      return FFLocalizations.of(context).getText(
        'hp008ism' /* الرجاء ادخال الرقم بطريقة صحيح... */,
      );
    }

    return null;
  }

  // Stores action output result for [Backend Call - API (Query Subscriber Balance Message)] action in TextField widget.
  ApiCallResponse? apiResultykr;
  // State field(s) for ChoiceChips widget.
  FormFieldController<List<String>>? choiceChipsValueController;
  String? get choiceChipsValue =>
      choiceChipsValueController?.value?.firstOrNull;
  set choiceChipsValue(String? val) =>
      choiceChipsValueController?.value = val != null ? [val] : [];
  // State field(s) for CheckboxListTile widget.
  Map<YouRecord, bool> checkboxListTileValueMap1 = {};
  List<YouRecord> get checkboxListTileCheckedItems1 =>
      checkboxListTileValueMap1.entries
          .where((e) => e.value)
          .map((e) => e.key)
          .toList();

  // State field(s) for CheckboxListTile widget.
  Map<YouRecord, bool> checkboxListTileValueMap2 = {};
  List<YouRecord> get checkboxListTileCheckedItems2 =>
      checkboxListTileValueMap2.entries
          .where((e) => e.value)
          .map((e) => e.key)
          .toList();

  // State field(s) for CheckboxListTile widget.
  Map<YouRecord, bool> checkboxListTileValueMap3 = {};
  List<YouRecord> get checkboxListTileCheckedItems3 =>
      checkboxListTileValueMap3.entries
          .where((e) => e.value)
          .map((e) => e.key)
          .toList();

  // State field(s) for TabBar widget.
  TabController? tabBarController;
  int get tabBarCurrentIndex =>
      tabBarController != null ? tabBarController!.index : 0;

  // State field(s) for CheckboxListTile widget.
  Map<YouRecord, bool> checkboxListTileValueMap4 = {};
  List<YouRecord> get checkboxListTileCheckedItems4 =>
      checkboxListTileValueMap4.entries
          .where((e) => e.value)
          .map((e) => e.key)
          .toList();

  // State field(s) for CheckboxListTile widget.
  Map<YouRecord, bool> checkboxListTileValueMap5 = {};
  List<YouRecord> get checkboxListTileCheckedItems5 =>
      checkboxListTileValueMap5.entries
          .where((e) => e.value)
          .map((e) => e.key)
          .toList();

  // State field(s) for CheckboxListTile widget.
  Map<YouRecord, bool> checkboxListTileValueMap6 = {};
  List<YouRecord> get checkboxListTileCheckedItems6 =>
      checkboxListTileValueMap6.entries
          .where((e) => e.value)
          .map((e) => e.key)
          .toList();

  // State field(s) for CheckboxListTile widget.
  Map<YouRecord, bool> checkboxListTileValueMap7 = {};
  List<YouRecord> get checkboxListTileCheckedItems7 =>
      checkboxListTileValueMap7.entries
          .where((e) => e.value)
          .map((e) => e.key)
          .toList();

  @override
  void initState(BuildContext context) {
    nameofferTextControllerValidator = _nameofferTextControllerValidator;
    textController9Validator = _textController9Validator;
  }

  @override
  void dispose() {
    textFieldFocusNode1?.dispose();
    textController1?.dispose();

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

    priceFocusNode?.dispose();
    priceTextController?.dispose();

    costFocusNode?.dispose();
    costTextController?.dispose();

    textFieldFocusNode2?.dispose();
    textController9?.dispose();

    tabBarController?.dispose();
  }
}
