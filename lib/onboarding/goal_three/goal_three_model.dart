import '/flutter_flow/flutter_flow_util.dart';
import 'goal_three_widget.dart' show GoalThreeWidget;
import 'package:flutter/material.dart';

class GoalThreeModel extends FlutterFlowModel<GoalThreeWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for years widget.
  FocusNode? yearsFocusNode;
  TextEditingController? yearsTextController;
  String? Function(BuildContext, String?)? yearsTextControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    yearsFocusNode?.dispose();
    yearsTextController?.dispose();
  }
}
