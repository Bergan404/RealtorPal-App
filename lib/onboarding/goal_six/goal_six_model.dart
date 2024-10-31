import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'goal_six_widget.dart' show GoalSixWidget;
import 'package:flutter/material.dart';

class GoalSixModel extends FlutterFlowModel<GoalSixWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for CheckboxGroup widget.
  FormFieldController<List<String>>? checkboxGroupValueController;
  List<String>? get checkboxGroupValues => checkboxGroupValueController?.value;
  set checkboxGroupValues(List<String>? v) =>
      checkboxGroupValueController?.value = v;

  // State field(s) for Hours widget.
  String? hoursValue;
  FormFieldController<String>? hoursValueController;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
