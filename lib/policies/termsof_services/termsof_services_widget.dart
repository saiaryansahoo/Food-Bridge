import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'termsof_services_model.dart';
export 'termsof_services_model.dart';

class TermsofServicesWidget extends StatefulWidget {
  const TermsofServicesWidget({super.key});

  @override
  State<TermsofServicesWidget> createState() => _TermsofServicesWidgetState();
}

class _TermsofServicesWidgetState extends State<TermsofServicesWidget> {
  late TermsofServicesModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => TermsofServicesModel());

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
                          'Terms of Service',
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
                          '1. User Agreement: \n• Users must agree to use FoodBridge for its intended purpose, facilitating the donation \nof surplus food from restaurants to NGOs dedicated to hunger relief. \n\n2. User Conduct: \n• Users are expected to engage respectfully and ethically. \n• Prohibited activities include misusing the platform for personal gain or engaging in \nany behavior that undermines the mission of hunger relief. \n\n3. Donations and Redistribution: \n• Restaurants agree to donate only surplus food that meets safety and quality standards. \n• NGOs agree to responsibly distribute donated food to communities in need.\n \n4. Platform Modifications: \n• FoodBridge reserves the right to update the platform and its features to enhance user \nexperience and better serve its mission. \n\n5. Termination: \n• Violations of the terms may result in account suspension or termination. \n• Users can terminate their accounts at any time.\n\nContact Us\n\nIf you have any questions or concerns about our content policies or the practices of FoodBridge, please contact us at support@foodbridge.com',
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
