import 'package:flutter/material.dart';
import '/backend/backend.dart';
import '/backend/schema/structs/index.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'flutter_flow/flutter_flow_util.dart';

class FFAppState extends ChangeNotifier {
  static FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  static void reset() {
    _instance = FFAppState._internal();
  }

  Future initializePersistedState() async {}

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  List<StepStruct> _steps = [];
  List<StepStruct> get steps => _steps;
  set steps(List<StepStruct> value) {
    _steps = value;
  }

  void addToSteps(StepStruct value) {
    steps.add(value);
  }

  void removeFromSteps(StepStruct value) {
    steps.remove(value);
  }

  void removeAtIndexFromSteps(int index) {
    steps.removeAt(index);
  }

  void updateStepsAtIndex(
    int index,
    StepStruct Function(StepStruct) updateFn,
  ) {
    steps[index] = updateFn(_steps[index]);
  }

  void insertAtIndexInSteps(int index, StepStruct value) {
    steps.insert(index, value);
  }
}
