import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class CriteriaRecord extends FirestoreRecord {
  CriteriaRecord._(
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

  // "position" field.
  int? _position;
  int get position => _position ?? 0;
  bool hasPosition() => _position != null;

  // "timestamp" field.
  DateTime? _timestamp;
  DateTime? get timestamp => _timestamp;
  bool hasTimestamp() => _timestamp != null;

  void _initializeFields() {
    _name = snapshotData['name'] as String?;
    _description = snapshotData['description'] as String?;
    _position = castToType<int>(snapshotData['position']);
    _timestamp = snapshotData['timestamp'] as DateTime?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('criteria');

  static Stream<CriteriaRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => CriteriaRecord.fromSnapshot(s));

  static Future<CriteriaRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => CriteriaRecord.fromSnapshot(s));

  static CriteriaRecord fromSnapshot(DocumentSnapshot snapshot) =>
      CriteriaRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static CriteriaRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      CriteriaRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'CriteriaRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is CriteriaRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createCriteriaRecordData({
  String? name,
  String? description,
  int? position,
  DateTime? timestamp,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'name': name,
      'description': description,
      'position': position,
      'timestamp': timestamp,
    }.withoutNulls,
  );

  return firestoreData;
}

class CriteriaRecordDocumentEquality implements Equality<CriteriaRecord> {
  const CriteriaRecordDocumentEquality();

  @override
  bool equals(CriteriaRecord? e1, CriteriaRecord? e2) {
    return e1?.name == e2?.name &&
        e1?.description == e2?.description &&
        e1?.position == e2?.position &&
        e1?.timestamp == e2?.timestamp;
  }

  @override
  int hash(CriteriaRecord? e) => const ListEquality()
      .hash([e?.name, e?.description, e?.position, e?.timestamp]);

  @override
  bool isValidKey(Object? o) => o is CriteriaRecord;
}
