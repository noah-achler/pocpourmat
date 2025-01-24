import '/backend/api_requests/api_calls.dart';
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'detail_pet_page_widget.dart' show DetailPetPageWidget;
import 'package:flutter/material.dart';

class DetailPetPageModel extends FlutterFlowModel<DetailPetPageWidget> {
  ///  Local state fields for this page.

  PetStruct? pet;
  void updatePetStruct(Function(PetStruct) updateFn) {
    updateFn(pet ??= PetStruct());
  }

  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Backend Call - API (petstorefindById)] action in DetailPetPage widget.
  ApiCallResponse? result;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
