import '/components/home_widget.dart';
import '/components/profile_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'homepage_widget.dart' show HomepageWidget;
import 'package:flutter/material.dart';

class HomepageModel extends FlutterFlowModel<HomepageWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;
  // Model for Profile component.
  late ProfileModel profileModel;
  // Model for Home component.
  late HomeModel homeModel;

  @override
  void initState(BuildContext context) {
    profileModel = createModel(context, () => ProfileModel());
    homeModel = createModel(context, () => HomeModel());
  }

  @override
  void dispose() {
    textFieldFocusNode?.dispose();
    textController?.dispose();

    profileModel.dispose();
    homeModel.dispose();
  }
}
