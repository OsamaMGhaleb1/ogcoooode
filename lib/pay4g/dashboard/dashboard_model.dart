import '/backend/backend.dart';
import '/components/na_bar_item_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dashboard_widget.dart' show DashboardWidget;
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class DashboardModel extends FlutterFlowModel<DashboardWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for TabBar widget.
  TabController? tabBarController;
  int get tabBarCurrentIndex =>
      tabBarController != null ? tabBarController!.index : 0;

  // Model for NaBarItem component.
  late NaBarItemModel naBarItemModel;
  // Model for orders.
  late NaBarItemModel ordersModel1;
  // Model for orders.
  late NaBarItemModel ordersModel2;
  // Model for walle.
  late NaBarItemModel walleModel;
  // Model for profil.
  late NaBarItemModel profilModel;

  @override
  void initState(BuildContext context) {
    naBarItemModel = createModel(context, () => NaBarItemModel());
    ordersModel1 = createModel(context, () => NaBarItemModel());
    ordersModel2 = createModel(context, () => NaBarItemModel());
    walleModel = createModel(context, () => NaBarItemModel());
    profilModel = createModel(context, () => NaBarItemModel());
  }

  @override
  void dispose() {
    tabBarController?.dispose();
    naBarItemModel.dispose();
    ordersModel1.dispose();
    ordersModel2.dispose();
    walleModel.dispose();
    profilModel.dispose();
  }
}
