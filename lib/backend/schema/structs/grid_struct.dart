// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class GridStruct extends FFFirebaseStruct {
  GridStruct({
    String? title,
    String? description,
    List<StepStruct>? steps,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _title = title,
        _description = description,
        _steps = steps,
        super(firestoreUtilData);

  // "title" field.
  String? _title;
  String get title => _title ?? '';
  set title(String? val) => _title = val;

  bool hasTitle() => _title != null;

  // "description" field.
  String? _description;
  String get description => _description ?? '';
  set description(String? val) => _description = val;

  bool hasDescription() => _description != null;

  // "steps" field.
  List<StepStruct>? _steps;
  List<StepStruct> get steps => _steps ?? const [];
  set steps(List<StepStruct>? val) => _steps = val;

  void updateSteps(Function(List<StepStruct>) updateFn) {
    updateFn(_steps ??= []);
  }

  bool hasSteps() => _steps != null;

  static GridStruct fromMap(Map<String, dynamic> data) => GridStruct(
        title: data['title'] as String?,
        description: data['description'] as String?,
        steps: getStructList(
          data['steps'],
          StepStruct.fromMap,
        ),
      );

  static GridStruct? maybeFromMap(dynamic data) =>
      data is Map ? GridStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'title': _title,
        'description': _description,
        'steps': _steps?.map((e) => e.toMap()).toList(),
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'title': serializeParam(
          _title,
          ParamType.String,
        ),
        'description': serializeParam(
          _description,
          ParamType.String,
        ),
        'steps': serializeParam(
          _steps,
          ParamType.DataStruct,
          isList: true,
        ),
      }.withoutNulls;

  static GridStruct fromSerializableMap(Map<String, dynamic> data) =>
      GridStruct(
        title: deserializeParam(
          data['title'],
          ParamType.String,
          false,
        ),
        description: deserializeParam(
          data['description'],
          ParamType.String,
          false,
        ),
        steps: deserializeStructParam<StepStruct>(
          data['steps'],
          ParamType.DataStruct,
          true,
          structBuilder: StepStruct.fromSerializableMap,
        ),
      );

  @override
  String toString() => 'GridStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    const listEquality = ListEquality();
    return other is GridStruct &&
        title == other.title &&
        description == other.description &&
        listEquality.equals(steps, other.steps);
  }

  @override
  int get hashCode => const ListEquality().hash([title, description, steps]);
}

GridStruct createGridStruct({
  String? title,
  String? description,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    GridStruct(
      title: title,
      description: description,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

GridStruct? updateGridStruct(
  GridStruct? grid, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    grid
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addGridStructData(
  Map<String, dynamic> firestoreData,
  GridStruct? grid,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (grid == null) {
    return;
  }
  if (grid.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields = !forFieldValue && grid.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final gridData = getGridFirestoreData(grid, forFieldValue);
  final nestedData = gridData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = grid.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getGridFirestoreData(
  GridStruct? grid, [
  bool forFieldValue = false,
]) {
  if (grid == null) {
    return {};
  }
  final firestoreData = mapToFirestore(grid.toMap());

  // Add any Firestore field values
  grid.firestoreUtilData.fieldValues.forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getGridListFirestoreData(
  List<GridStruct>? grids,
) =>
    grids?.map((e) => getGridFirestoreData(e, true)).toList() ?? [];
