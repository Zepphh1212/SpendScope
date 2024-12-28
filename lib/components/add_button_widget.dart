import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'add_button_model.dart';
export 'add_button_model.dart';

class AddButtonWidget extends StatefulWidget {
  const AddButtonWidget({super.key});

  @override
  State<AddButtonWidget> createState() => _AddButtonWidgetState();
}

class _AddButtonWidgetState extends State<AddButtonWidget> {
  late AddButtonModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => AddButtonModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [const Color(0x00BBF9F9), FlutterFlowTheme.of(context).primary],
          stops: const [0.0, 1.0],
          begin: const AlignmentDirectional(0.0, -1.0),
          end: const AlignmentDirectional(0, 1.0),
        ),
      ),
      child: Align(
        alignment: const AlignmentDirectional(0.0, 1.0),
        child: SizedBox(
          height: 150.0,
          child: Stack(
            alignment: const AlignmentDirectional(0.0, 1.0),
            children: [
              Align(
                alignment: const AlignmentDirectional(0.4, 0.0),
                child: FlutterFlowIconButton(
                  borderColor: Colors.transparent,
                  borderRadius: 8.0,
                  buttonSize: 50.0,
                  fillColor: const Color(0x00233679),
                  hoverColor: FlutterFlowTheme.of(context).error,
                  hoverIconColor:
                      FlutterFlowTheme.of(context).primaryBackground,
                  icon: Icon(
                    Icons.file_upload,
                    color: FlutterFlowTheme.of(context).info,
                    size: 28.0,
                  ),
                  onPressed: () async {
                    context.pushNamed('Add_Expense');
                  },
                ),
              ),
              Align(
                alignment: const AlignmentDirectional(-0.4, 0.0),
                child: FlutterFlowIconButton(
                  borderColor: Colors.transparent,
                  borderRadius: 8.0,
                  buttonSize: 50.0,
                  fillColor: const Color(0x00233679),
                  hoverColor: FlutterFlowTheme.of(context).success,
                  hoverIconColor:
                      FlutterFlowTheme.of(context).primaryBackground,
                  icon: Icon(
                    Icons.file_download,
                    color: FlutterFlowTheme.of(context).info,
                    size: 28.0,
                  ),
                  onPressed: () async {
                    context.pushNamed('Add_income');
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
