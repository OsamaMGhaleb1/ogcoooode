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
import 'profile_edit_widget.dart' show ProfileEditWidget;
import 'package:cached_network_image/cached_network_image.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:collection/collection.dart';
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class ProfileEditModel extends FlutterFlowModel<ProfileEditWidget> {
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
  // Stores action output result for [Firestore Query - Query a collection] action in ProfileEdit widget.
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
        'luoj2o3j' /* Field is required */,
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
        'w3pxefrr' /* Field is required */,
      );
    }

    return null;
  }

  // State field(s) for EmailTextField widget.
  FocusNode? emailTextFieldFocusNode;
  TextEditingController? emailTextFieldTextController;
  String? Function(BuildContext, String?)?
      emailTextFieldTextControllerValidator;
  String? _emailTextFieldTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return FFLocalizations.of(context).getText(
        'q6q7tf4d' /* Field is required */,
      );
    }

    return null;
  }

  // Model for BirthdayUpdate component.
  late BirthdayUpdateModel birthdayUpdateModel;
  // State field(s) for tf_phone widget.
  FocusNode? tfPhoneFocusNode1;
  TextEditingController? tfPhoneTextController1;
  String? Function(BuildContext, String?)? tfPhoneTextController1Validator;
  // State field(s) for tf_phone widget.
  FocusNode? tfPhoneFocusNode2;
  TextEditingController? tfPhoneTextController2;
  String? Function(BuildContext, String?)? tfPhoneTextController2Validator;
  // State field(s) for corrence widget.
  String? correnceValue;
  FormFieldController<String>? correnceValueController;

  @override
  void initState(BuildContext context) {
    headerModel = createModel(context, () => HeaderModel());
    fullNameTextFieldTextControllerValidator =
        _fullNameTextFieldTextControllerValidator;
    tfUserNameTextControllerValidator = _tfUserNameTextControllerValidator;
    emailTextFieldTextControllerValidator =
        _emailTextFieldTextControllerValidator;
    birthdayUpdateModel = createModel(context, () => BirthdayUpdateModel());
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
