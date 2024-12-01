import '/components/na_bar_item_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'navbardash_model.dart';
export 'navbardash_model.dart';

class NavbardashWidget extends StatefulWidget {
  const NavbardashWidget({super.key});

  @override
  State<NavbardashWidget> createState() => _NavbardashWidgetState();
}

class _NavbardashWidgetState extends State<NavbardashWidget> {
  late NavbardashModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => NavbardashModel());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.max,
      children: [
        Expanded(
          child: InkWell(
            splashColor: Colors.transparent,
            focusColor: Colors.transparent,
            hoverColor: Colors.transparent,
            highlightColor: Colors.transparent,
            onTap: () async {
              context.pushNamed('HOMEMAIN');
            },
            child: wrapWithModel(
              model: _model.naBarItemModel,
              updateCallback: () => safeSetState(() {}),
              child: NaBarItemWidget(
                currentItemName: 'خروج',
                unselectedIcon: Icon(
                  Icons.home_outlined,
                  color: Color(0xFF008BB6),
                  size: 24.0,
                ),
                selectedIcon: Icon(
                  Icons.home,
                  color: FlutterFlowTheme.of(context).primaryText,
                  size: 24.0,
                ),
              ),
            ),
          ),
        ),
        Expanded(
          child: InkWell(
            splashColor: Colors.transparent,
            focusColor: Colors.transparent,
            hoverColor: Colors.transparent,
            highlightColor: Colors.transparent,
            onTap: () async {
              context.goNamed('dashboard');
            },
            child: wrapWithModel(
              model: _model.ordersModel,
              updateCallback: () => safeSetState(() {}),
              child: NaBarItemWidget(
                currentItemName: 'الطلبات',
                unselectedIcon: Icon(
                  Icons.document_scanner_outlined,
                  color: Color(0xFF008BB6),
                  size: 24.0,
                ),
                selectedIcon: Icon(
                  Icons.document_scanner,
                  color: FlutterFlowTheme.of(context).primaryText,
                  size: 24.0,
                ),
              ),
            ),
          ),
        ),
        Expanded(
          child: InkWell(
            splashColor: Colors.transparent,
            focusColor: Colors.transparent,
            hoverColor: Colors.transparent,
            highlightColor: Colors.transparent,
            onTap: () async {
              context.goNamed('CHAT');
            },
            child: wrapWithModel(
              model: _model.walleModel,
              updateCallback: () => safeSetState(() {}),
              child: NaBarItemWidget(
                currentItemName: 'الرسائل',
                unselectedIcon: Icon(
                  Icons.mark_chat_read_outlined,
                  color: Color(0xFF008BB6),
                  size: 24.0,
                ),
                selectedIcon: Icon(
                  Icons.account_balance_wallet_rounded,
                  color: FlutterFlowTheme.of(context).primaryText,
                  size: 24.0,
                ),
              ),
            ),
          ),
        ),
        Expanded(
          child: InkWell(
            splashColor: Colors.transparent,
            focusColor: Colors.transparent,
            hoverColor: Colors.transparent,
            highlightColor: Colors.transparent,
            onTap: () async {
              context.goNamed('addp4g');
            },
            child: wrapWithModel(
              model: _model.profilModel,
              updateCallback: () => safeSetState(() {}),
              child: NaBarItemWidget(
                currentItemName: 'إضافة',
                unselectedIcon: Icon(
                  Icons.add,
                  color: Color(0xFF008BB6),
                  size: 24.0,
                ),
                selectedIcon: Icon(
                  Icons.people_rounded,
                  color: FlutterFlowTheme.of(context).primaryText,
                  size: 24.0,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
