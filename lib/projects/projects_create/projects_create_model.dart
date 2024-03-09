import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'projects_create_widget.dart' show ProjectsCreateWidget;
import 'package:flutter/material.dart';

class ProjectsCreateModel extends FlutterFlowModel<ProjectsCreateWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for project_name widget.
  FocusNode? projectNameFocusNode;
  TextEditingController? projectNameController;
  String? Function(BuildContext, String?)? projectNameControllerValidator;
  // State field(s) for project_description widget.
  FocusNode? projectDescriptionFocusNode;
  TextEditingController? projectDescriptionController;
  String? Function(BuildContext, String?)?
      projectDescriptionControllerValidator;
  // State field(s) for investors widget.
  List<String>? investorsValue;
  FormFieldController<List<String>>? investorsValueController;
  bool isDataUploading = false;
  FFUploadedFile uploadedLocalFile =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl = '';

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
    projectNameFocusNode?.dispose();
    projectNameController?.dispose();

    projectDescriptionFocusNode?.dispose();
    projectDescriptionController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
