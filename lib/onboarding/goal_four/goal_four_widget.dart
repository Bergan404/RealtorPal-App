import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'goal_four_model.dart';
export 'goal_four_model.dart';

class GoalFourWidget extends StatefulWidget {
  const GoalFourWidget({super.key});

  @override
  State<GoalFourWidget> createState() => _GoalFourWidgetState();
}

class _GoalFourWidgetState extends State<GoalFourWidget> {
  late GoalFourModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => GoalFourModel());

    _model.yearsTextController ??= TextEditingController();
    _model.yearsFocusNode ??= FocusNode();
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<List<QuestionnaireRecord>>(
      stream: queryQuestionnaireRecord(
        singleRecord: true,
      ),
      builder: (context, snapshot) {
        // Customize what your widget looks like when it's loading.
        if (!snapshot.hasData) {
          return Scaffold(
            backgroundColor: FlutterFlowTheme.of(context).secondary,
            body: Center(
              child: SizedBox(
                width: 50.0,
                height: 50.0,
                child: CircularProgressIndicator(
                  valueColor: AlwaysStoppedAnimation<Color>(
                    FlutterFlowTheme.of(context).primary,
                  ),
                ),
              ),
            ),
          );
        }
        List<QuestionnaireRecord> goalFourQuestionnaireRecordList =
            snapshot.data!;
        // Return an empty Container when the item does not exist.
        if (snapshot.data!.isEmpty) {
          return Container();
        }
        final goalFourQuestionnaireRecord =
            goalFourQuestionnaireRecordList.isNotEmpty
                ? goalFourQuestionnaireRecordList.first
                : null;

        return GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          child: Scaffold(
            key: scaffoldKey,
            backgroundColor: FlutterFlowTheme.of(context).secondary,
            appBar: AppBar(
              backgroundColor: FlutterFlowTheme.of(context).tertiary,
              automaticallyImplyLeading: false,
              leading: FlutterFlowIconButton(
                borderColor: Colors.transparent,
                borderRadius: 30.0,
                borderWidth: 1.0,
                buttonSize: 60.0,
                icon: const Icon(
                  Icons.arrow_back_rounded,
                  color: Colors.white,
                  size: 25.0,
                ),
                onPressed: () async {
                  context.pop();
                },
              ),
              title: Text(
                'GOALS',
                style: FlutterFlowTheme.of(context).headlineMedium.override(
                      fontFamily: 'Inter Tight',
                      color: Colors.white,
                      fontSize: 22.0,
                      letterSpacing: 0.0,
                      fontWeight: FontWeight.w300,
                    ),
              ),
              actions: const [],
              centerTitle: true,
              elevation: 2.0,
            ),
            body: Container(
              width: double.infinity,
              height: double.infinity,
              decoration: BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.contain,
                  alignment: const AlignmentDirectional(0.0, 1.0),
                  image: Image.asset(
                    'assets/images/Houses.png',
                  ).image,
                ),
              ),
              child: Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(24.0, 10.0, 24.0, 24.0),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Container(
                      width: double.infinity,
                      decoration: const BoxDecoration(),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Expanded(
                            child: Padding(
                              padding: const EdgeInsets.all(2.0),
                              child: FlutterFlowIconButton(
                                borderColor: Colors.transparent,
                                borderRadius: 8.0,
                                buttonSize: 10.0,
                                fillColor: FlutterFlowTheme.of(context).primary,
                                icon: Icon(
                                  Icons.arrow_back,
                                  color: FlutterFlowTheme.of(context).info,
                                  size: 0.0,
                                ),
                                onPressed: () {
                                  print('IconButton pressed ...');
                                },
                              ),
                            ),
                          ),
                          Expanded(
                            child: Padding(
                              padding: const EdgeInsets.all(2.0),
                              child: FlutterFlowIconButton(
                                borderColor: Colors.transparent,
                                borderRadius: 8.0,
                                buttonSize: 10.0,
                                fillColor: FlutterFlowTheme.of(context).primary,
                                icon: Icon(
                                  Icons.arrow_back,
                                  color: FlutterFlowTheme.of(context).info,
                                  size: 0.0,
                                ),
                                onPressed: () {
                                  print('IconButton pressed ...');
                                },
                              ),
                            ),
                          ),
                          Expanded(
                            child: Padding(
                              padding: const EdgeInsets.all(2.0),
                              child: FlutterFlowIconButton(
                                borderColor: Colors.transparent,
                                borderRadius: 8.0,
                                buttonSize: 10.0,
                                fillColor: FlutterFlowTheme.of(context).primary,
                                icon: Icon(
                                  Icons.arrow_back,
                                  color: FlutterFlowTheme.of(context).info,
                                  size: 0.0,
                                ),
                                onPressed: () {
                                  print('IconButton pressed ...');
                                },
                              ),
                            ),
                          ),
                          Expanded(
                            child: Padding(
                              padding: const EdgeInsets.all(2.0),
                              child: FlutterFlowIconButton(
                                borderColor: Colors.transparent,
                                borderRadius: 8.0,
                                buttonSize: 10.0,
                                fillColor: FlutterFlowTheme.of(context).primary,
                                icon: Icon(
                                  Icons.arrow_back,
                                  color: FlutterFlowTheme.of(context).info,
                                  size: 0.0,
                                ),
                                onPressed: () {
                                  print('IconButton pressed ...');
                                },
                              ),
                            ),
                          ),
                          Expanded(
                            child: Padding(
                              padding: const EdgeInsets.all(2.0),
                              child: FlutterFlowIconButton(
                                borderColor: Colors.transparent,
                                borderRadius: 8.0,
                                buttonSize: 10.0,
                                fillColor:
                                    FlutterFlowTheme.of(context).alternate,
                                icon: Icon(
                                  Icons.arrow_back,
                                  color: FlutterFlowTheme.of(context).info,
                                  size: 0.0,
                                ),
                                onPressed: () {
                                  print('IconButton pressed ...');
                                },
                              ),
                            ),
                          ),
                          Expanded(
                            child: Padding(
                              padding: const EdgeInsets.all(2.0),
                              child: FlutterFlowIconButton(
                                borderColor: Colors.transparent,
                                borderRadius: 8.0,
                                buttonSize: 10.0,
                                fillColor:
                                    FlutterFlowTheme.of(context).alternate,
                                icon: Icon(
                                  Icons.arrow_back,
                                  color: FlutterFlowTheme.of(context).info,
                                  size: 0.0,
                                ),
                                onPressed: () {
                                  print('IconButton pressed ...');
                                },
                              ),
                            ),
                          ),
                          Expanded(
                            child: Padding(
                              padding: const EdgeInsets.all(2.0),
                              child: FlutterFlowIconButton(
                                borderColor: Colors.transparent,
                                borderRadius: 8.0,
                                buttonSize: 10.0,
                                fillColor:
                                    FlutterFlowTheme.of(context).alternate,
                                icon: Icon(
                                  Icons.arrow_back,
                                  color: FlutterFlowTheme.of(context).info,
                                  size: 0.0,
                                ),
                                onPressed: () {
                                  print('IconButton pressed ...');
                                },
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      width: double.infinity,
                      height: 100.0,
                      decoration: const BoxDecoration(),
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Transactions Done',
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: 'Inter',
                                  fontSize: 20.0,
                                  letterSpacing: 0.0,
                                  fontWeight: FontWeight.w300,
                                ),
                          ),
                          Text(
                            'Since you have became a Realtor how many transactions have you done',
                            textAlign: TextAlign.center,
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: 'Inter',
                                  color: const Color(0xFF666666),
                                  letterSpacing: 0.0,
                                  fontWeight: FontWeight.w300,
                                ),
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      child: Container(
                        width: double.infinity,
                        height: 100.0,
                        decoration: const BoxDecoration(),
                        child: Align(
                          alignment: const AlignmentDirectional(0.0, 0.0),
                          child: SizedBox(
                            width: double.infinity,
                            child: TextFormField(
                              controller: _model.yearsTextController,
                              focusNode: _model.yearsFocusNode,
                              onChanged: (_) => EasyDebounce.debounce(
                                '_model.yearsTextController',
                                const Duration(milliseconds: 2000),
                                () => safeSetState(() {}),
                              ),
                              autofocus: false,
                              obscureText: false,
                              decoration: InputDecoration(
                                isDense: true,
                                hintText: 'How many closings...',
                                hintStyle: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      fontFamily: 'Inter',
                                      fontSize: 20.0,
                                      letterSpacing: 0.0,
                                      fontWeight: FontWeight.w100,
                                    ),
                                enabledBorder: OutlineInputBorder(
                                  borderSide: const BorderSide(
                                    color: Color(0x00000000),
                                    width: 0.0,
                                  ),
                                  borderRadius: BorderRadius.circular(8.0),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderSide: const BorderSide(
                                    color: Color(0x00000000),
                                    width: 0.0,
                                  ),
                                  borderRadius: BorderRadius.circular(8.0),
                                ),
                                errorBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: FlutterFlowTheme.of(context).error,
                                    width: 0.0,
                                  ),
                                  borderRadius: BorderRadius.circular(8.0),
                                ),
                                focusedErrorBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: FlutterFlowTheme.of(context).error,
                                    width: 0.0,
                                  ),
                                  borderRadius: BorderRadius.circular(8.0),
                                ),
                                filled: true,
                                fillColor: const Color(0xFF666666),
                                suffixIcon: _model
                                        .yearsTextController!.text.isNotEmpty
                                    ? InkWell(
                                        onTap: () async {
                                          _model.yearsTextController?.clear();
                                          safeSetState(() {});
                                        },
                                        child: Icon(
                                          Icons.clear,
                                          color: FlutterFlowTheme.of(context)
                                              .primaryBackground,
                                          size: 24.0,
                                        ),
                                      )
                                    : null,
                              ),
                              style: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    fontFamily: 'Inter',
                                    fontSize: 20.0,
                                    letterSpacing: 0.0,
                                    fontWeight: FontWeight.w100,
                                  ),
                              keyboardType: TextInputType.number,
                              cursorColor:
                                  FlutterFlowTheme.of(context).primaryText,
                              validator: _model.yearsTextControllerValidator
                                  .asValidator(context),
                            ),
                          ),
                        ),
                      ),
                    ),
                    FFButtonWidget(
                      onPressed: () async {
                        await goalFourQuestionnaireRecord!.reference
                            .update(createQuestionnaireRecordData(
                          transactionsDone:
                              int.tryParse(_model.yearsTextController.text),
                        ));

                        context.pushNamed('GoalFive');
                      },
                      text: 'Next',
                      options: FFButtonOptions(
                        width: double.infinity,
                        height: 50.0,
                        padding: const EdgeInsetsDirectional.fromSTEB(
                            16.0, 0.0, 16.0, 0.0),
                        iconPadding:
                            const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                        color: FlutterFlowTheme.of(context).primary,
                        textStyle:
                            FlutterFlowTheme.of(context).titleLarge.override(
                                  fontFamily: 'Inter Tight',
                                  color: FlutterFlowTheme.of(context)
                                      .secondaryBackground,
                                  letterSpacing: 0.0,
                                ),
                        elevation: 0.0,
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
