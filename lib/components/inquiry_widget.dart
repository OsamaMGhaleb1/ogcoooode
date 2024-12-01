import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'inquiry_model.dart';
export 'inquiry_model.dart';

class InquiryWidget extends StatefulWidget {
  const InquiryWidget({super.key});

  @override
  State<InquiryWidget> createState() => _InquiryWidgetState();
}

class _InquiryWidgetState extends State<InquiryWidget> {
  late InquiryModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => InquiryModel());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
