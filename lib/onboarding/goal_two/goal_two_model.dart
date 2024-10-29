import '/flutter_flow/flutter_flow_util.dart';
import 'goal_two_widget.dart' show GoalTwoWidget;
import 'package:flutter/material.dart';

class GoalTwoModel extends FlutterFlowModel<GoalTwoWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for location widget.
  FocusNode? locationFocusNode;
  TextEditingController? locationTextController;
  String? Function(BuildContext, String?)? locationTextControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    locationFocusNode?.dispose();
    locationTextController?.dispose();
  }
}
