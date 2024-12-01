import '/backend/backend.dart';
import '/components/navbardash_widget.dart';
import '/flutter_flow/chat/index.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'chat_widget.dart' show ChatWidget;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class ChatModel extends FlutterFlowModel<ChatWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for navbardash component.
  late NavbardashModel navbardashModel;

  @override
  void initState(BuildContext context) {
    navbardashModel = createModel(context, () => NavbardashModel());
  }

  @override
  void dispose() {
    navbardashModel.dispose();
  }
}
