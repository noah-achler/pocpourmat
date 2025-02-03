// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class EvaluationStruct extends FFFirebaseStruct {
  EvaluationStruct({
    String? id,
    String? name,
    String? description,
    int? position,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _id = id,
        _name = name,
        _description = description,
        _position = position,
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

  // "position" field.
  int? _position;
  int get position => _position ?? 0;
  set position(int? val) => _position = val;

  void incrementPosition(int amount) => position = position + amount;

  bool hasPosition() => _position != null;

  static EvaluationStruct fromMap(Map<String, dynamic> data) =>
      EvaluationStruct(
        id: data['id'] as String?,
        name: data['name'] as String?,
        description: data['description'] as String?,
        position: castToType<int>(data['position']),
      );

  static EvaluationStruct? maybeFromMap(dynamic data) => data is Map
      ? EvaluationStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'id': _id,
        'name': _name,
        'description': _description,
        'position': _position,
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
        'position': serializeParam(
          _position,
          ParamType.int,
        ),
      }.withoutNulls;

  static EvaluationStruct fromSerializableMap(Map<String, dynamic> data) =>
      EvaluationStruct(
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
        position: deserializeParam(
          data['position'],
          ParamType.int,
          false,
        ),
      );

  @override
  String toString() => 'EvaluationStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is EvaluationStruct &&
        id == other.id &&
        name == other.name &&
        description == other.description &&
        position == other.position;
  }

  @override
  int get hashCode =>
      const ListEquality().hash([id, name, description, position]);
}

EvaluationStruct createEvaluationStruct({
  String? id,
  String? name,
  String? description,
  int? position,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    EvaluationStruct(
      id: id,
      name: name,
      description: description,
      position: position,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

EvaluationStruct? updateEvaluationStruct(
  EvaluationStruct? evaluation, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    evaluation
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addEvaluationStructData(
  Map<String, dynamic> firestoreData,
  EvaluationStruct? evaluation,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (evaluation == null) {
    return;
  }
  if (evaluation.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && evaluation.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final evaluationData = getEvaluationFirestoreData(evaluation, forFieldValue);
  final nestedData = evaluationData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = evaluation.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getEvaluationFirestoreData(
  EvaluationStruct? evaluation, [
  bool forFieldValue = false,
]) {
  if (evaluation == null) {
    return {};
  }
  final firestoreData = mapToFirestore(evaluation.toMap());

  // Add any Firestore field values
  evaluation.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getEvaluationListFirestoreData(
  List<EvaluationStruct>? evaluations,
) =>
    evaluations?.map((e) => getEvaluationFirestoreData(e, true)).toList() ?? [];
