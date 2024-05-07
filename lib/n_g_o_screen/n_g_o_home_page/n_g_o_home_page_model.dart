import '/flutter_flow/flutter_flow_util.dart';
import 'n_g_o_home_page_widget.dart' show NGOHomePageWidget;
import 'package:flutter/material.dart';

class NGOHomePageModel extends FlutterFlowModel<NGOHomePageWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
