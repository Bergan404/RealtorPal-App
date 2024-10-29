import '/flutter_flow/flutter_flow_util.dart';
import 'goal_four_widget.dart' show GoalFourWidget;
import 'package:flutter/material.dart';

class GoalFourModel extends FlutterFlowModel<GoalFourWidget> {
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
