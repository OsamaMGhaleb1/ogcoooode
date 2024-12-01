import '/components/na_bar_item_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'addp4g_widget.dart' show Addp4gWidget;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class Addp4gModel extends FlutterFlowModel<Addp4gWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for NaBarItem component.
  late NaBarItemModel naBarItemModel;
  // Model for orders.
  late NaBarItemModel ordersModel;
  // Model for walle.
  late NaBarItemModel walleModel;
  // Model for profil.
  late NaBarItemModel profilModel;

  @override
  void initState(BuildContext context) {
    naBarItemModel = createModel(context, () => NaBarItemModel());
    ordersModel = createModel(context, () => NaBarItemModel());
    walleModel = createModel(context, () => NaBarItemModel());
    profilModel = createModel(context, () => NaBarItemModel());
  }

  @override
  void dispose() {
    naBarItemModel.dispose();
    ordersModel.dispose();
    walleModel.dispose();
    profilModel.dispose();
  }
}
