import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'privacy_policies_model.dart';
export 'privacy_policies_model.dart';

class PrivacyPoliciesWidget extends StatefulWidget {
  const PrivacyPoliciesWidget({super.key});

  @override
  State<PrivacyPoliciesWidget> createState() => _PrivacyPoliciesWidgetState();
}

class _PrivacyPoliciesWidgetState extends State<PrivacyPoliciesWidget> {
  late PrivacyPoliciesModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => PrivacyPoliciesModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => _model.unfocusNode.canRequestFocus
          ? FocusScope.of(context).requestFocus(_model.unfocusNode)
          : FocusScope.of(context).unfocus(),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: const Color(0xFF39AC73),
        body: SafeArea(
          top: true,
          child: Align(
            alignment: const AlignmentDirectional(0.0, -1.0),
            child: Container(
              width: 369.0,
              height: 742.0,
              decoration: BoxDecoration(
                color: FlutterFlowTheme.of(context).secondaryBackground,
              ),
              child: Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  const Opacity(
                    opacity: 0.0,
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [],
                    ),
                  ),
                  Container(
                    width: 344.0,
                    height: 703.0,
                    decoration: BoxDecoration(
                      color: FlutterFlowTheme.of(context).secondaryBackground,
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        const Opacity(
                          opacity: 0.0,
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [],
                          ),
                        ),
                        Text(
                          'Privacy Policies',
                          style:
                              FlutterFlowTheme.of(context).bodyMedium.override(
                                    fontFamily: 'Readex Pro',
                                    fontSize: 25.0,
                                    letterSpacing: 0.0,
                                  ),
                        ),
                        const Opacity(
                          opacity: 0.0,
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [],
                          ),
                        ),
                        SelectionArea(
                            child: Text(
                          'This Privacy Policy outlines the practices of FoodBridge regarding the collection, use, and protection of personal information when you use our mobile application and services.\n\n->Information Collection and Use\nFoodBridge may collect certain personal information to facilitate the operation of our platform and improve user experience. This may include:\n\n  1. Contact information such as name, email address, and phone number.\n 2.Location data to connect restaurants and NGOs in the same geographic area.\n\n->Use of Data\nThe information collected by FoodBridge is utilized for the following purposes:\n\n 1. Facilitating communication and transactions between restaurants and NGOs.\n\n->Changes to Privacy Policy\nFoodBridge reserves the right to update or modify this Privacy Policy at any time. Users will be notified of any changes through the mobile application or website. \n\n->Contact Us\nIf you have any questions or concerns about this Privacy Policy or the practices of FoodBridge, please contact us at support@foodbridge.',
                          style: FlutterFlowTheme.of(context)
                              .bodyMedium
                              .override(
                                fontFamily: 'Readex Pro',
                                color:
                                    FlutterFlowTheme.of(context).secondaryText,
                                letterSpacing: 0.0,
                              ),
                        )),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
