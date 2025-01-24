import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'add_pet_page_widget.dart' show AddPetPageWidget;
import 'package:flutter/material.dart';

class AddPetPageModel extends FlutterFlowModel<AddPetPageWidget> {
  ///  Local state fields for this page.

  PetStruct? pet;
  void updatePetStruct(Function(PetStruct) updateFn) {
    updateFn(pet ??= PetStruct());
  }

  ///  State fields for stateful widgets in this page.

  // State field(s) for status widget.
  String? statusValue;
  FormFieldController<String>? statusValueController;
  // State field(s) for name widget.
  FocusNode? nameFocusNode;
  TextEditingController? nameTextController;
  String? Function(BuildContext, String?)? nameTextControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    nameFocusNode?.dispose();
    nameTextController?.dispose();
  }
}
