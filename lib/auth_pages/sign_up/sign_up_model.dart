import '/flutter_flow/flutter_flow_util.dart';
import 'sign_up_widget.dart' show SignUpWidget;
import 'package:flutter/material.dart';

class SignUpModel extends FlutterFlowModel<SignUpWidget> {
  ///  State fields for stateful widgets in this page.

  final formKey = GlobalKey<FormState>();
  // State field(s) for TabBar widget.
  TabController? tabBarController;
  int get tabBarCurrentIndex =>
      tabBarController != null ? tabBarController!.index : 0;

  // State field(s) for SignupEmail widget.
  FocusNode? signupEmailFocusNode;
  TextEditingController? signupEmailTextController;
  String? Function(BuildContext, String?)? signupEmailTextControllerValidator;
  String? _signupEmailTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    if (!RegExp(kTextValidatorEmailRegex).hasMatch(val)) {
      return 'Invalid Email';
    }
    return null;
  }

  // State field(s) for Signup-pasword widget.
  FocusNode? signupPaswordFocusNode;
  TextEditingController? signupPaswordTextController;
  late bool signupPaswordVisibility;
  String? Function(BuildContext, String?)? signupPaswordTextControllerValidator;
  String? _signupPaswordTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    if (val.length < 8) {
      return 'Password must be at least 8 characters long.';
    }

    return null;
  }

  // State field(s) for sign-up-confirm-password widget.
  FocusNode? signUpConfirmPasswordFocusNode;
  TextEditingController? signUpConfirmPasswordTextController;
  late bool signUpConfirmPasswordVisibility;
  String? Function(BuildContext, String?)?
      signUpConfirmPasswordTextControllerValidator;
  String? _signUpConfirmPasswordTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    if (val.length < 8) {
      return 'Password must be at least 8 characters long';
    }

    return null;
  }

  // State field(s) for Checkbox widget.
  bool? checkboxValue;
  // State field(s) for LogInEmail widget.
  FocusNode? logInEmailFocusNode;
  TextEditingController? logInEmailTextController;
  String? Function(BuildContext, String?)? logInEmailTextControllerValidator;
  // State field(s) for password widget.
  FocusNode? passwordFocusNode;
  TextEditingController? passwordTextController;
  late bool passwordVisibility;
  String? Function(BuildContext, String?)? passwordTextControllerValidator;

  @override
  void initState(BuildContext context) {
    signupEmailTextControllerValidator = _signupEmailTextControllerValidator;
    signupPaswordVisibility = false;
    signupPaswordTextControllerValidator =
        _signupPaswordTextControllerValidator;
    signUpConfirmPasswordVisibility = false;
    signUpConfirmPasswordTextControllerValidator =
        _signUpConfirmPasswordTextControllerValidator;
    passwordVisibility = false;
  }

  @override
  void dispose() {
    tabBarController?.dispose();
    signupEmailFocusNode?.dispose();
    signupEmailTextController?.dispose();

    signupPaswordFocusNode?.dispose();
    signupPaswordTextController?.dispose();

    signUpConfirmPasswordFocusNode?.dispose();
    signUpConfirmPasswordTextController?.dispose();

    logInEmailFocusNode?.dispose();
    logInEmailTextController?.dispose();

    passwordFocusNode?.dispose();
    passwordTextController?.dispose();
  }
}
