// import '/auth/firebase_auth/auth_util.dart';
// import '/backend/backend.dart';
// import '/flutter_flow/flutter_flow_theme.dart';
// import '/flutter_flow/flutter_flow_util.dart';
// import '/flutter_flow/flutter_flow_widgets.dart';
// import 'package:cloud_firestore/cloud_firestore.dart';
// import 'package:flutter/gestures.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_spinkit/flutter_spinkit.dart';
// import 'package:google_fonts/google_fonts.dart';
// import 'package:provider/provider.dart';

// import 'onboarding_page_model.dart';
// export 'onboarding_page_model.dart';

// class OnboardingPageWidget extends StatefulWidget {
//   const OnboardingPageWidget({super.key});

//   @override
//   State<OnboardingPageWidget> createState() => _OnboardingPageWidgetState();
// }

// class _OnboardingPageWidgetState extends State<OnboardingPageWidget> {
//   late OnboardingPageModel _model;

//   final scaffoldKey = GlobalKey<ScaffoldState>();

//   @override
//   void initState() {
//     super.initState();
//     _model = createModel(context, () => OnboardingPageModel());

//     WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
//   }

//   @override
//   void dispose() {
//     _model.dispose();

//     super.dispose();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return GestureDetector(
//       onTap: () => _model.unfocusNode.canRequestFocus
//           ? FocusScope.of(context).requestFocus(_model.unfocusNode)
//           : FocusScope.of(context).unfocus(),
//       child: Scaffold(
//         key: scaffoldKey,
//         backgroundColor: Color(0xFF060623),
//         body: Container(
//           width: double.infinity,
//           height: double.infinity,
//           decoration: BoxDecoration(
//             color: Color(0xFF05051D),
//           ),
//           child: Column(
//             mainAxisSize: MainAxisSize.max,
//             children: [
//               Stack(
//                 children: [
//                   Align(
//                     alignment: AlignmentDirectional(0, 0),
//                     child: ClipRRect(
//                       borderRadius: BorderRadius.circular(8),
//                       child: Image.asset(
//                         'assets/images/iPhone_14_Plus_-_164.png',
//                         width: double.infinity,
//                         height: 414,
//                         fit: BoxFit.cover,
//                       ),
//                     ),
//                   ),
//                   Align(
//                     alignment: AlignmentDirectional(0, 0),
//                     child: Padding(
//                       padding: EdgeInsetsDirectional.fromSTEB(0, 356, 0, 0),
//                       child: Text(
//                         FFLocalizations.of(context).getText(
//                           'alv5ioqo' /* Создайте свою сказку прямо сей... */,
//                         ),
//                         style: FlutterFlowTheme.of(context).bodyMedium.override(
//                               fontFamily: 'averta',
//                               color: Colors.white,
//                               letterSpacing: 0,
//                               fontWeight: FontWeight.w600,
//                               useGoogleFonts: false,
//                             ),
//                       ),
//                     ),
//                   ),
//                   Align(
//                     alignment: AlignmentDirectional(0, 0),
//                     child: Padding(
//                       padding: EdgeInsetsDirectional.fromSTEB(0, 320, 0, 0),
//                       child: ClipRRect(
//                         borderRadius: BorderRadius.circular(8),
//                         child: Image.asset(
//                           'assets/images/book.png',
//                           width: 30,
//                           height: 30,
//                           fit: BoxFit.cover,
//                         ),
//                       ),
//                     ),
//                   ),
//                 ],
//               ),
//               Padding(
//                 padding: EdgeInsetsDirectional.fromSTEB(22, 20, 22, 0),
//                 child: Column(
//                   mainAxisSize: MainAxisSize.max,
//                   children: [
//                     FFButtonWidget(
//                       onPressed: () async {
//                         context.pushNamed('LoginPage');
//                       },
//                       text: FFLocalizations.of(context).getText(
//                         'kv7dv3td' /* Log in */,
//                       ),
//                       options: FFButtonOptions(
//                         width: double.infinity,
//                         height: 60,
//                         padding: EdgeInsetsDirectional.fromSTEB(24, 0, 24, 0),
//                         iconPadding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 0),
//                         color: Color.fromARGB(255, 115, 94, 225),
//                         textStyle:
//                             FlutterFlowTheme.of(context).titleMedium.override(
//                                   fontFamily: 'fairy font',
//                                   letterSpacing: 0,
//                                   fontWeight: FontWeight.w600,
//                                   useGoogleFonts: false,
//                                 ),
//                         elevation: 3,
//                         borderSide: BorderSide(
//                           color: Colors.transparent,
//                           width: 1,
//                         ),
//                         borderRadius: BorderRadius.circular(20),
//                       ),
//                     ),
//                     Padding(
//                       padding: EdgeInsetsDirectional.fromSTEB(0, 12, 0, 0),
//                       child: FFButtonWidget(
//                         onPressed: () async {
//                           context.pushNamed('SignUPage');
//                         },
//                         text: FFLocalizations.of(context).getText(
//                           'yljenihe' /* Sign up */,
//                         ),
//                         options: FFButtonOptions(
//                           width: double.infinity,
//                           height: 60,
//                           padding: EdgeInsetsDirectional.fromSTEB(24, 0, 24, 0),
//                           iconPadding:
//                               EdgeInsetsDirectional.fromSTEB(0, 0, 0, 0),
//                           color: Color(0x1AFFFFFF),
//                           textStyle:
//                               FlutterFlowTheme.of(context).titleMedium.override(
//                                     fontFamily: 'fairy font',
//                                     color: Colors.white,
//                                     letterSpacing: 0,
//                                     fontWeight: FontWeight.w600,
//                                     useGoogleFonts: false,
//                                   ),
//                           elevation: 3,
//                           borderSide: BorderSide(
//                             color: Colors.transparent,
//                             width: 1,
//                           ),
//                           borderRadius: BorderRadius.circular(20),
//                         ),
//                       ),
//                     ),
//                     Padding(
//                       padding: EdgeInsetsDirectional.fromSTEB(0, 12, 0, 0),
//                       child: FFButtonWidget(
//                         onPressed: () async {
//                           GoRouter.of(context).prepareAuthEvent();
//                           final user =
//                               await authManager.signInWithGoogle(context);
//                           if (user == null) {
//                             return;
//                           }
//                           if (!valueOrDefault<bool>(
//                               currentUserDocument?.registered, false)) {
//                             await currentUserReference!
//                                 .update(createUsersRecordData(
//                               registered: true,
//                             ));

//                             await PlayersRecord.collection
//                                 .doc()
//                                 .set(createPlayersRecordData(
//                                   user: currentUserReference,
//                                   credits: 9,
//                                 ));
//                           }

//                           context.pushNamedAuth('main', context.mounted);
//                         },
//                         text: FFLocalizations.of(context).getText(
//                           '0tdddvtg' /* Google */,
//                         ),
//                         options: FFButtonOptions(
//                           width: double.infinity,
//                           height: 60,
//                           padding: EdgeInsetsDirectional.fromSTEB(24, 0, 24, 0),
//                           iconPadding:
//                               EdgeInsetsDirectional.fromSTEB(0, 0, 0, 0),
//                           color: Color(0x19FFFFFF),
//                           textStyle:
//                               FlutterFlowTheme.of(context).titleSmall.override(
//                                     fontFamily: 'Poppins',
//                                     color: Colors.white,
//                                     letterSpacing: 0,
//                                     fontWeight: FontWeight.w600,
//                                   ),
//                           elevation: 3,
//                           borderSide: BorderSide(
//                             color: Colors.transparent,
//                             width: 1,
//                           ),
//                           borderRadius: BorderRadius.circular(20),
//                         ),
//                       ),
//                     ),

//                     // You will have to add an action on this rich text to go to your login page.
//                     Align(
//                       alignment: AlignmentDirectional(0, 1),
//                       child: Padding(
//                         padding: EdgeInsetsDirectional.fromSTEB(0, 100, 0, 90),
//                         child: RichText(
//                           textScaler: MediaQuery.of(context).textScaler,
//                           text: TextSpan(
//                             children: [
//                               TextSpan(
//                                 text: FFLocalizations.of(context).getText(
//                                   'fh1trx5u' /* Регистрируясь вы соглашаетесь ... */,
//                                 ),
//                                 style: TextStyle(
//                                   fontFamily: 'averta',
//                                   color: Colors.white,
//                                   fontWeight: FontWeight.normal,
//                                 ),
//                               ),
//                               TextSpan(
//                                 text: FFLocalizations.of(context).getText(
//                                   'nqp0ujs9' /*  Условиями пользования  */,
//                                 ),
//                                 style: TextStyle(
//                                   color: Color(0xFF735EE1),
//                                   decoration: TextDecoration.underline,
//                                 ),
//                               ),
//                               TextSpan(
//                                 text: FFLocalizations.of(context).getText(
//                                   'sbcanfeg' /*  и */,
//                                 ),
//                                 style: TextStyle(
//                                   color: Colors.white,
//                                 ),
//                               ),
//                               TextSpan(
//                                 text: FFLocalizations.of(context).getText(
//                                   'wm7wut3v' /*  Политикой конфиденциальности */,
//                                 ),
//                                 style: TextStyle(
//                                   color: Color(0xFF735EE1),
//                                   decoration: TextDecoration.underline,
//                                 ),
//                               )
//                             ],
//                             style: FlutterFlowTheme.of(context)
//                                 .labelLarge
//                                 .override(
//                                   fontFamily: 'Poppins',
//                                   fontSize: 14,
//                                   letterSpacing: 0,
//                                 ),
//                           ),
//                           textAlign: TextAlign.center,
//                         ),
//                       ),
//                     ),
//                   ],
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
