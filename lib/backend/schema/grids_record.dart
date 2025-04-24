import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class GridsRecord extends FirestoreRecord {
  GridsRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "title" field.
  String? _title;
  String get title => _title ?? '';
  bool hasTitle() => _title != null;

  // "description" field.
  String? _description;
  String get description => _description ?? '';
  bool hasDescription() => _description != null;

  // "steps" field.
  List<StepStruct>? _steps;
  List<StepStruct> get steps => _steps ?? const [];
  bool hasSteps() => _steps != null;

  // "timestamp" field.
  DateTime? _timestamp;
  DateTime? get timestamp => _timestamp;
  bool hasTimestamp() => _timestamp != null;

  void _initializeFields() {
    _title = snapshotData['title'] as String?;
    _description = snapshotData['description'] as String?;
    _steps = getStructList(
      snapshotData['steps'],
      StepStruct.fromMap,
    );
    _timestamp = snapshotData['timestamp'] as DateTime?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('grids');

  static Stream<GridsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => GridsRecord.fromSnapshot(s));

  static Future<GridsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => GridsRecord.fromSnapshot(s));

  static GridsRecord fromSnapshot(DocumentSnapshot snapshot) => GridsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static GridsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      GridsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'GridsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is GridsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createGridsRecordData({
  String? title,
  String? description,
  DateTime? timestamp,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'title': title,
      'description': description,
      'timestamp': timestamp,
    }.withoutNulls,
  );

  return firestoreData;
}

class GridsRecordDocumentEquality implements Equality<GridsRecord> {
  const GridsRecordDocumentEquality();

  @override
  bool equals(GridsRecord? e1, GridsRecord? e2) {
    const listEquality = ListEquality();
    return e1?.title == e2?.title &&
        e1?.description == e2?.description &&
        listEquality.equals(e1?.steps, e2?.steps) &&
        e1?.timestamp == e2?.timestamp;
  }

  @override
  int hash(GridsRecord? e) => const ListEquality()
      .hash([e?.title, e?.description, e?.steps, e?.timestamp]);

  @override
  bool isValidKey(Object? o) => o is GridsRecord;
}
