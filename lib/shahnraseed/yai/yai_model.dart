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
import 'yai_widget.dart' show YaiWidget;
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:webviewx_plus/webviewx_plus.dart';

class YaiModel extends FlutterFlowModel<YaiWidget> {
  ///  Local state fields for this page.

  int? nqury = 1;

  String? subscribertype;

  int? actioncode;

  int? numerref;

  int? button = 21;

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
        'i6qptktm' /* اختر الباقة */,
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
  // State field(s) for COAST widget.
  FocusNode? coastFocusNode;
  TextEditingController? coastTextController;
  String? Function(BuildContext, String?)? coastTextControllerValidator;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode1;
  TextEditingController? textController8;
  String? Function(BuildContext, String?)? textController8Validator;
  String? _textController8Validator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return FFLocalizations.of(context).getText(
        'cmowswcy' /* Field is required */,
      );
    }

    if (val.length < 9) {
      return FFLocalizations.of(context).getText(
        'lbxw9b9x' /* الرجاء ادخال الرقم بطريقة صحيح... */,
      );
    }
    if (val.length > 9) {
      return FFLocalizations.of(context).getText(
        'k72lylz7' /* الرجاء ادخال الرقم بطريقة صحيح... */,
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
  TabController? tabBarController;
  int get tabBarCurrentIndex =>
      tabBarController != null ? tabBarController!.index : 0;

  // State field(s) for CheckboxListTile widget.
  Map<YRecord, bool> checkboxListTileValueMap1 = {};
  List<YRecord> get checkboxListTileCheckedItems1 =>
      checkboxListTileValueMap1.entries
          .where((e) => e.value)
          .map((e) => e.key)
          .toList();

  // State field(s) for CheckboxListTile widget.
  Map<YRecord, bool> checkboxListTileValueMap2 = {};
  List<YRecord> get checkboxListTileCheckedItems2 =>
      checkboxListTileValueMap2.entries
          .where((e) => e.value)
          .map((e) => e.key)
          .toList();

  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode2;
  TextEditingController? textController9;
  String? Function(BuildContext, String?)? textController9Validator;

  @override
  void initState(BuildContext context) {
    nameofferTextControllerValidator = _nameofferTextControllerValidator;
    textController8Validator = _textController8Validator;
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

    priceFocusNode?.dispose();
    priceTextController?.dispose();

    coastFocusNode?.dispose();
    coastTextController?.dispose();

    textFieldFocusNode1?.dispose();
    textController8?.dispose();

    tabBarController?.dispose();
    textFieldFocusNode2?.dispose();
    textController9?.dispose();
  }
}
