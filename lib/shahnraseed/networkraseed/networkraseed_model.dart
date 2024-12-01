import '/backend/api_requests/api_calls.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/shahnraseed/surerasid1/surerasid1_widget.dart';
import '/flutter_flow/random_data_util.dart' as random_data;
import 'networkraseed_widget.dart' show NetworkraseedWidget;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:webviewx_plus/webviewx_plus.dart';

class NetworkraseedModel extends FlutterFlowModel<NetworkraseedWidget> {
  ///  Local state fields for this page.

  int? update;

  int? inquery;

  int? query;

  int? numberref;

  ///  State fields for stateful widgets in this page.

  final formKey = GlobalKey<FormState>();
  // State field(s) for AC widget.
  FocusNode? acFocusNode;
  TextEditingController? acTextController;
  String? Function(BuildContext, String?)? acTextControllerValidator;
  // State field(s) for AMT widget.
  FocusNode? amtFocusNode;
  TextEditingController? amtTextController;
  String? Function(BuildContext, String?)? amtTextControllerValidator;
  // State field(s) for REF widget.
  FocusNode? refFocusNode;
  TextEditingController? refTextController;
  String? Function(BuildContext, String?)? refTextControllerValidator;
  // State field(s) for SAC widget.
  FocusNode? sacFocusNode;
  TextEditingController? sacTextController;
  String? Function(BuildContext, String?)? sacTextControllerValidator;
  // State field(s) for COST widget.
  FocusNode? costFocusNode;
  TextEditingController? costTextController;
  String? Function(BuildContext, String?)? costTextControllerValidator;
  String? _costTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return FFLocalizations.of(context).getText(
        'qvyhf92m' /* Field is required */,
      );
    }

    return null;
  }

  // State field(s) for name widget.
  FocusNode? nameFocusNode;
  TextEditingController? nameTextController;
  String? Function(BuildContext, String?)? nameTextControllerValidator;
  // State field(s) for phone widget.
  FocusNode? phoneFocusNode;
  TextEditingController? phoneTextController;
  String? Function(BuildContext, String?)? phoneTextControllerValidator;
  String? _phoneTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return FFLocalizations.of(context).getText(
        'uzvphlkr' /* الحقل مطلوب */,
      );
    }

    if (val.length < 9) {
      return 'Requires at least 9 characters.';
    }
    if (val.length > 9) {
      return 'Maximum 9 characters allowed, currently ${val.length}.';
    }

    return null;
  }

  // State field(s) for CheckboxListTile widget.
  Map<Yemen4gRecord, bool> checkboxListTileValueMap = {};
  List<Yemen4gRecord> get checkboxListTileCheckedItems =>
      checkboxListTileValueMap.entries
          .where((e) => e.value)
          .map((e) => e.key)
          .toList();

  @override
  void initState(BuildContext context) {
    costTextControllerValidator = _costTextControllerValidator;
    phoneTextControllerValidator = _phoneTextControllerValidator;
  }

  @override
  void dispose() {
    acFocusNode?.dispose();
    acTextController?.dispose();

    amtFocusNode?.dispose();
    amtTextController?.dispose();

    refFocusNode?.dispose();
    refTextController?.dispose();

    sacFocusNode?.dispose();
    sacTextController?.dispose();

    costFocusNode?.dispose();
    costTextController?.dispose();

    nameFocusNode?.dispose();
    nameTextController?.dispose();

    phoneFocusNode?.dispose();
    phoneTextController?.dispose();
  }
}