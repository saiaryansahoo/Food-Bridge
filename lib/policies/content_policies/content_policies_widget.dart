import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'content_policies_model.dart';
export 'content_policies_model.dart';

class ContentPoliciesWidget extends StatefulWidget {
  const ContentPoliciesWidget({super.key});

  @override
  State<ContentPoliciesWidget> createState() => _ContentPoliciesWidgetState();
}

class _ContentPoliciesWidgetState extends State<ContentPoliciesWidget> {
  late ContentPoliciesModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ContentPoliciesModel());

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
                          'Content Policies',
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
                          'At FoodBridge, we are committed to fostering a positive and inclusive community that promotes our mission of addressing food wastage and hunger. To ensure the integrity and effectiveness of our platform, we have established the following content policies:\n\n1. Appropriate Content: Users are prohibited from posting content that is unlawful, harmful, threatening, abusive, harassing, defamatory, vulgar, obscene, or otherwise objectionable. Content must adhere to community standards and contribute positively to our mission.\n\n2. Respectful Communication: Users are expected to engage in respectful and constructive communication with others on the platform. Harassment, bullying, hate speech, and discrimination of any kind will not be tolerated.\n\n3. Authenticity: Users must provide accurate and truthful information when creating profiles or posting content. Misrepresentation, impersonation, or deceptive practices are strictly prohibited.\n\n4. Intellectual Property: Users must respect the intellectual property rights of others and refrain from posting copyrighted material without proper authorization. Plagiarism and infringement of intellectual property rights will not be tolerated.\n\nContact Us\n\nIf you have any questions or concerns about our content policies or the practices of FoodBridge, please contact us at support@foodbridge.com',
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
