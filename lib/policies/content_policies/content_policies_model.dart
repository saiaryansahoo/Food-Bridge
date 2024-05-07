import '/flutter_flow/flutter_flow_util.dart';
import 'content_policies_widget.dart' show ContentPoliciesWidget;
import 'package:flutter/material.dart';

class ContentPoliciesModel extends FlutterFlowModel<ContentPoliciesWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
