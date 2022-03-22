import '../auth/auth_util.dart';
import '../backend/backend.dart';
import '../dashboard/dashboard_widget.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:page_transition/page_transition.dart';

class QuestionsWidget extends StatefulWidget {
  QuestionsWidget({Key key}) : super(key: key);

  @override
  _QuestionsWidgetState createState() => _QuestionsWidgetState();
}

class _QuestionsWidgetState extends State<QuestionsWidget> {
  TextEditingController textController1;
  TextEditingController textController2;
  TextEditingController textController3;
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    textController1 = TextEditingController();
    textController2 = TextEditingController();
    textController3 = TextEditingController();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: Color(0xFFE86831),
      body: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: EdgeInsets.fromLTRB(0, 30, 0, 0),
              child: Container(
                width: double.infinity,
                height: 500,
                decoration: BoxDecoration(
                  color: Color(0xFFE86831),
                ),
                child: SingleChildScrollView(
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Padding(
                        padding: EdgeInsets.fromLTRB(0, 0, 0, 15),
                        child: AutoSizeText(
                          'How many people you met today?',
                          textAlign: TextAlign.center,
                          style: FlutterFlowTheme.title3.override(
                            fontFamily: 'Poppins',
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      Material(
                        color: Colors.transparent,
                        elevation: 5,
                        child: Container(
                          width: 300,
                          height: 50,
                          decoration: BoxDecoration(
                            gradient: LinearGradient(
                              colors: [
                                FlutterFlowTheme.primaryColor,
                                Color(0xFFAA0B0D)
                              ],
                              stops: [0, 1],
                              begin: Alignment(1, -1),
                              end: Alignment(-1, 1),
                            ),
                            shape: BoxShape.rectangle,
                            border: Border.all(
                              width: 0,
                            ),
                          ),
                          child: TextFormField(
                            controller: textController1,
                            obscureText: false,
                            decoration: InputDecoration(
                              labelText: 'Social: Enter a value between 0-100',
                              labelStyle: FlutterFlowTheme.bodyText1.override(
                                fontFamily: 'Poppins',
                                color: Colors.white,
                                fontWeight: FontWeight.w500,
                              ),
                              enabledBorder: InputBorder.none,
                              focusedBorder: InputBorder.none,
                            ),
                            style: FlutterFlowTheme.bodyText1.override(
                              fontFamily: 'Poppins',
                              color: Colors.white,
                              fontWeight: FontWeight.w500,
                            ),
                            textAlign: TextAlign.center,
                            maxLines: 1,
                            keyboardType: TextInputType.number,
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.fromLTRB(0, 10, 0, 15),
                        child: AutoSizeText(
                          'How happy do you feel today?',
                          textAlign: TextAlign.center,
                          style: FlutterFlowTheme.title3.override(
                            fontFamily: 'Poppins',
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      Material(
                        color: Colors.transparent,
                        elevation: 5,
                        child: Container(
                          width: 300,
                          height: 50,
                          decoration: BoxDecoration(
                            gradient: LinearGradient(
                              colors: [
                                FlutterFlowTheme.primaryColor,
                                Color(0xFFAA0B0D)
                              ],
                              stops: [0, 1],
                              begin: Alignment(1, -1),
                              end: Alignment(-1, 1),
                            ),
                            shape: BoxShape.rectangle,
                            border: Border.all(
                              width: 0,
                            ),
                          ),
                          child: TextFormField(
                            controller: textController2,
                            obscureText: false,
                            decoration: InputDecoration(
                              labelText:
                                  'Happiness: Enter a value between 0-100',
                              labelStyle: FlutterFlowTheme.bodyText1.override(
                                fontFamily: 'Poppins',
                                color: Colors.white,
                                fontWeight: FontWeight.w500,
                              ),
                              enabledBorder: InputBorder.none,
                              focusedBorder: InputBorder.none,
                            ),
                            style: FlutterFlowTheme.bodyText1.override(
                              fontFamily: 'Poppins',
                              color: Colors.white,
                              fontWeight: FontWeight.w500,
                            ),
                            textAlign: TextAlign.center,
                            maxLines: 1,
                            keyboardType: TextInputType.number,
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.fromLTRB(0, 10, 0, 15),
                        child: AutoSizeText(
                          'How productive do you feel today?',
                          textAlign: TextAlign.center,
                          style: FlutterFlowTheme.title3.override(
                            fontFamily: 'Poppins',
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      Material(
                        color: Colors.transparent,
                        elevation: 5,
                        child: Container(
                          width: 300,
                          height: 50,
                          decoration: BoxDecoration(
                            gradient: LinearGradient(
                              colors: [
                                FlutterFlowTheme.primaryColor,
                                Color(0xFFAA0B0D)
                              ],
                              stops: [0, 1],
                              begin: Alignment(1, -1),
                              end: Alignment(-1, 1),
                            ),
                            shape: BoxShape.rectangle,
                            border: Border.all(
                              width: 0,
                            ),
                          ),
                          child: TextFormField(
                            controller: textController3,
                            obscureText: false,
                            decoration: InputDecoration(
                              labelText:
                                  'Productivity: Enter a value between 0-100',
                              labelStyle: FlutterFlowTheme.bodyText1.override(
                                fontFamily: 'Poppins',
                                color: Colors.white,
                                fontWeight: FontWeight.w500,
                              ),
                              enabledBorder: InputBorder.none,
                              focusedBorder: InputBorder.none,
                            ),
                            style: FlutterFlowTheme.bodyText1.override(
                              fontFamily: 'Poppins',
                              color: Colors.white,
                              fontWeight: FontWeight.w500,
                            ),
                            textAlign: TextAlign.center,
                            maxLines: 1,
                            keyboardType: TextInputType.number,
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.fromLTRB(0, 15, 0, 0),
                        child: FFButtonWidget(
                          onPressed: () async {
                            final questionOne = int.parse(textController1.text);
                            final user = currentUserReference;
                            final answeredOn = getCurrentTimestamp;
                            final questionTwo = int.parse(textController2.text);
                            final questionThree =
                                int.parse(textController3.text);

                            final questionsRecordData =
                                createQuestionsRecordData(
                              questionOne: questionOne,
                              user: user,
                              answeredOn: answeredOn,
                              questionTwo: questionTwo,
                              questionThree: questionThree,
                            );

                            await QuestionsRecord.collection
                                .doc()
                                .set(questionsRecordData);
                            await Navigator.pushAndRemoveUntil(
                              context,
                              PageTransition(
                                type: PageTransitionType.rightToLeft,
                                duration: Duration(milliseconds: 1),
                                reverseDuration: Duration(milliseconds: 1),
                                child: DashboardWidget(),
                              ),
                              (r) => false,
                            );
                          },
                          text: 'DONE',
                          icon: Icon(
                            Icons.done_outline_rounded,
                            size: 15,
                          ),
                          options: FFButtonOptions(
                            width: 130,
                            height: 40,
                            color: Color(0xFFE86831),
                            textStyle: FlutterFlowTheme.subtitle2.override(
                              fontFamily: 'Poppins',
                              color: Colors.black,
                              fontWeight: FontWeight.w500,
                            ),
                            borderSide: BorderSide(
                              color: Color(0xFFE86831),
                              width: 0,
                            ),
                            borderRadius: 0,
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
