import '/flutter_flow/flutter_flow_util.dart';
import 'goal_five_widget.dart' show GoalFiveWidget;
import 'package:flutter/material.dart';

class GoalFiveModel extends FlutterFlowModel<GoalFiveWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for connections widget.
  FocusNode? connectionsFocusNode;
  TextEditingController? connectionsTextController;
  String? Function(BuildContext, String?)? connectionsTextControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    connectionsFocusNode?.dispose();
    connectionsTextController?.dispose();
  }
}
