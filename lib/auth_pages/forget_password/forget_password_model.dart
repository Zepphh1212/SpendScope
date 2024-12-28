import '/flutter_flow/flutter_flow_util.dart';
import 'forget_password_widget.dart' show ForgetPasswordWidget;
import 'package:flutter/material.dart';

class ForgetPasswordModel extends FlutterFlowModel<ForgetPasswordWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for LogInEmail widget.
  FocusNode? logInEmailFocusNode;
  TextEditingController? logInEmailTextController;
  String? Function(BuildContext, String?)? logInEmailTextControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    logInEmailFocusNode?.dispose();
    logInEmailTextController?.dispose();
  }
}
