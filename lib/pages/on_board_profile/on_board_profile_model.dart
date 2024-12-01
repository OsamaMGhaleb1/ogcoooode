import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/backend/firebase_storage/storage.dart';
import '/components/birthday_update/birthday_update_widget.dart';
import '/components/header/header_widget.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import '/flutter_flow/upload_data.dart';
import '/modals/on_board_complete_modal/on_board_complete_modal_widget.dart';
import 'on_board_profile_widget.dart' show OnBoardProfileWidget;
import 'package:cached_network_image/cached_network_image.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:collection/collection.dart';
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:webviewx_plus/webviewx_plus.dart';

class OnBoardProfileModel extends FlutterFlowModel<OnBoardProfileWidget> {
  ///  Local state fields for this page.

  List<String> listOfUserNames = [];
  void addToListOfUserNames(String item) => listOfUserNames.add(item);
  void removeFromListOfUserNames(String item) => listOfUserNames.remove(item);
  void removeAtIndexFromListOfUserNames(int index) =>
      listOfUserNames.removeAt(index);
  void insertAtIndexInListOfUserNames(int index, String item) =>
      listOfUserNames.insert(index, item);
  void updateListOfUserNamesAtIndex(int index, Function(String) updateFn) =>
      listOfUserNames[index] = updateFn(listOfUserNames[index]);

  ///  State fields for stateful widgets in this page.

  final formKey = GlobalKey<FormState>();
  // Stores action output result for [Firestore Query - Query a collection] action in onBoard_Profile widget.
  AppSettingRecord? currentAppSetting;
  // Model for Header component.
  late HeaderModel headerModel;
  bool isDataUploading = false;
  FFUploadedFile uploadedLocalFile =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl = '';

  // State field(s) for FullNameTextField widget.
  FocusNode? fullNameTextFieldFocusNode;
  TextEditingController? fullNameTextFieldTextController;
  String? Function(BuildContext, String?)?
      fullNameTextFieldTextControllerValidator;
  String? _fullNameTextFieldTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return FFLocalizations.of(context).getText(
        '9dyjpeqh' /* Field is required */,
      );
    }

    return null;
  }

  // State field(s) for tf_userName widget.
  FocusNode? tfUserNameFocusNode;
  TextEditingController? tfUserNameTextController;
  String? Function(BuildContext, String?)? tfUserNameTextControllerValidator;
  String? _tfUserNameTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return FFLocalizations.of(context).getText(
        'ndlygltm' /* Field is required */,
      );
    }

    return null;
  }

  // State field(s) for EmailTextField widget.
  FocusNode? emailTextFieldFocusNode;
  TextEditingController? emailTextFieldTextController;
  String? Function(BuildContext, String?)?
      emailTextFieldTextControllerValidator;
  // Model for BirthdayUpdate component.
  late BirthdayUpdateModel birthdayUpdateModel;
  // State field(s) for tf_phone widget.
  FocusNode? tfPhoneFocusNode1;
  TextEditingController? tfPhoneTextController1;
  String? Function(BuildContext, String?)? tfPhoneTextController1Validator;
  String? _tfPhoneTextController1Validator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return FFLocalizations.of(context).getText(
        'b1bjuo7w' /* Field is required */,
      );
    }

    return null;
  }

  // State field(s) for tf_phone widget.
  FocusNode? tfPhoneFocusNode2;
  TextEditingController? tfPhoneTextController2;
  String? Function(BuildContext, String?)? tfPhoneTextController2Validator;
  String? _tfPhoneTextController2Validator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return FFLocalizations.of(context).getText(
        'i9opaxj2' /* Field is required */,
      );
    }

    return null;
  }

  // State field(s) for dd-gender widget.
  String? ddGenderValue;
  FormFieldController<String>? ddGenderValueController;
  // Stores action output result for [Backend Call - Create Document] action in Button widget.
  CartRecord? cartCreatedForUser;

  @override
  void initState(BuildContext context) {
    headerModel = createModel(context, () => HeaderModel());
    fullNameTextFieldTextControllerValidator =
        _fullNameTextFieldTextControllerValidator;
    tfUserNameTextControllerValidator = _tfUserNameTextControllerValidator;
    birthdayUpdateModel = createModel(context, () => BirthdayUpdateModel());
    tfPhoneTextController1Validator = _tfPhoneTextController1Validator;
    tfPhoneTextController2Validator = _tfPhoneTextController2Validator;
  }

  @override
  void dispose() {
    headerModel.dispose();
    fullNameTextFieldFocusNode?.dispose();
    fullNameTextFieldTextController?.dispose();

    tfUserNameFocusNode?.dispose();
    tfUserNameTextController?.dispose();

    emailTextFieldFocusNode?.dispose();
    emailTextFieldTextController?.dispose();

    birthdayUpdateModel.dispose();
    tfPhoneFocusNode1?.dispose();
    tfPhoneTextController1?.dispose();

    tfPhoneFocusNode2?.dispose();
    tfPhoneTextController2?.dispose();
  }
}
