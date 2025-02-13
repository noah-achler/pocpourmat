// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class CriteriaStruct extends FFFirebaseStruct {
  CriteriaStruct({
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

  static CriteriaStruct fromMap(Map<String, dynamic> data) => CriteriaStruct(
        id: data['id'] as String?,
        name: data['name'] as String?,
        description: data['description'] as String?,
        position: castToType<int>(data['position']),
      );

  static CriteriaStruct? maybeFromMap(dynamic data) =>
      data is Map ? CriteriaStruct.fromMap(data.cast<String, dynamic>()) : null;

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

  static CriteriaStruct fromSerializableMap(Map<String, dynamic> data) =>
      CriteriaStruct(
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
  String toString() => 'CriteriaStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is CriteriaStruct &&
        id == other.id &&
        name == other.name &&
        description == other.description &&
        position == other.position;
  }

  @override
  int get hashCode =>
      const ListEquality().hash([id, name, description, position]);
}

CriteriaStruct createCriteriaStruct({
  String? id,
  String? name,
  String? description,
  int? position,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    CriteriaStruct(
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

CriteriaStruct? updateCriteriaStruct(
  CriteriaStruct? criteria, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    criteria
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addCriteriaStructData(
  Map<String, dynamic> firestoreData,
  CriteriaStruct? criteria,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (criteria == null) {
    return;
  }
  if (criteria.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && criteria.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final criteriaData = getCriteriaFirestoreData(criteria, forFieldValue);
  final nestedData = criteriaData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = criteria.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getCriteriaFirestoreData(
  CriteriaStruct? criteria, [
  bool forFieldValue = false,
]) {
  if (criteria == null) {
    return {};
  }
  final firestoreData = mapToFirestore(criteria.toMap());

  // Add any Firestore field values
  criteria.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getCriteriaListFirestoreData(
  List<CriteriaStruct>? criterias,
) =>
    criterias?.map((e) => getCriteriaFirestoreData(e, true)).toList() ?? [];
