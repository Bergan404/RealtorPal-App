import '/flutter_flow/flutter_flow_util.dart';
import 'goal_one_widget.dart' show GoalOneWidget;
import 'package:flutter/material.dart';

class GoalOneModel extends FlutterFlowModel<GoalOneWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for IncomeGoal widget.
  FocusNode? incomeGoalFocusNode;
  TextEditingController? incomeGoalTextController;
  String? Function(BuildContext, String?)? incomeGoalTextControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    incomeGoalFocusNode?.dispose();
    incomeGoalTextController?.dispose();
  }
}
