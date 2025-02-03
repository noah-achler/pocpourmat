// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class StepStruct extends FFFirebaseStruct {
  StepStruct({
    String? id,
    String? name,
    String? description,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _id = id,
        _name = name,
        _description = description,
        super(firestoreUtilData);

  // "id" field.
  String? _id;
  String get id => _id ?? '';
  set id(String? val) => _id = val;

  bool hasId() => _id != null;

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  set name(String? val) => _name = val;

  bool hasName() => _name != null;

  // "description" field.
  String? _description;
  String get description => _description ?? '';
  set description(String? val) => _description = val;

  bool hasDescription() => _description != null;

  static StepStruct fromMap(Map<String, dynamic> data) => StepStruct(
        id: data['id'] as String?,
        name: data['name'] as String?,
        description: data['description'] as String?,
      );

  static StepStruct? maybeFromMap(dynamic data) =>
      data is Map ? StepStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'id': _id,
        'name': _name,
        'description': _description,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'id': serializeParam(
          _id,
          ParamType.String,
        ),
        'name': serializeParam(
          _name,
          ParamType.String,
        ),
        'description': serializeParam(
          _description,
          ParamType.String,
        ),
      }.withoutNulls;

  static StepStruct fromSerializableMap(Map<String, dynamic> data) =>
      StepStruct(
        id: deserializeParam(
          data['id'],
          ParamType.String,
          false,
        ),
        name: deserializeParam(
          data['name'],
          ParamType.String,
          false,
        ),
        description: deserializeParam(
          data['description'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'StepStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is StepStruct &&
        id == other.id &&
        name == other.name &&
        description == other.description;
  }

  @override
  int get hashCode => const ListEquality().hash([id, name, description]);
}

StepStruct createStepStruct({
  String? id,
  String? name,
  String? description,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    StepStruct(
      id: id,
      name: name,
      description: description,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

StepStruct? updateStepStruct(
  StepStruct? step, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    step
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addStepStructData(
  Map<String, dynamic> firestoreData,
  StepStruct? step,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (step == null) {
    return;
  }
  if (step.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields = !forFieldValue && step.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final stepData = getStepFirestoreData(step, forFieldValue);
  final nestedData = stepData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = step.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getStepFirestoreData(
  StepStruct? step, [
  bool forFieldValue = false,
]) {
  if (step == null) {
    return {};
  }
  final firestoreData = mapToFirestore(step.toMap());

  // Add any Firestore field values
  step.firestoreUtilData.fieldValues.forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getStepListFirestoreData(
  List<StepStruct>? steps,
) =>
    steps?.map((e) => getStepFirestoreData(e, true)).toList() ?? [];
