import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class StepsRecord extends FirestoreRecord {
  StepsRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  bool hasName() => _name != null;

  // "description" field.
  String? _description;
  String get description => _description ?? '';
  bool hasDescription() => _description != null;

  // "timestamp" field.
  DateTime? _timestamp;
  DateTime? get timestamp => _timestamp;
  bool hasTimestamp() => _timestamp != null;

  void _initializeFields() {
    _name = snapshotData['name'] as String?;
    _description = snapshotData['description'] as String?;
    _timestamp = snapshotData['timestamp'] as DateTime?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('steps');

  static Stream<StepsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => StepsRecord.fromSnapshot(s));

  static Future<StepsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => StepsRecord.fromSnapshot(s));

  static StepsRecord fromSnapshot(DocumentSnapshot snapshot) => StepsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static StepsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      StepsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'StepsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is StepsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createStepsRecordData({
  String? name,
  String? description,
  DateTime? timestamp,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'name': name,
      'description': description,
      'timestamp': timestamp,
    }.withoutNulls,
  );

  return firestoreData;
}

class StepsRecordDocumentEquality implements Equality<StepsRecord> {
  const StepsRecordDocumentEquality();

  @override
  bool equals(StepsRecord? e1, StepsRecord? e2) {
    return e1?.name == e2?.name &&
        e1?.description == e2?.description &&
        e1?.timestamp == e2?.timestamp;
  }

  @override
  int hash(StepsRecord? e) =>
      const ListEquality().hash([e?.name, e?.description, e?.timestamp]);

  @override
  bool isValidKey(Object? o) => o is StepsRecord;
}
