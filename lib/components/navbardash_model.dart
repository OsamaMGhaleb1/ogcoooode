import '/components/na_bar_item_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'navbardash_widget.dart' show NavbardashWidget;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class NavbardashModel extends FlutterFlowModel<NavbardashWidget> {
  ///  State fields for stateful widgets in this component.

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
