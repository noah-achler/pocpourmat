// Automatic FlutterFlow imports
import '/backend/backend.dart';
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

Future addStep(StepsRecord record) async {
  StepStruct item = StepStruct(
      id: record.reference.id,
      title: record.title,
      description: record.description,
      position: record.position,
      criteria: List<CriteriaStruct>.empty(growable: true));
  FFAppState().steps.add(item);
  FFAppState().update(() {});
  print("ADDED STEP ${item.title}");
}
