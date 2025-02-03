import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class EvaluationsRecord extends FirestoreRecord {
  EvaluationsRecord._(
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

  void _initializeFields() {
    _name = snapshotData['name'] as String?;
    _description = snapshotData['description'] as String?;
    _position = castToType<int>(snapshotData['position']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('evaluations');

  static Stream<EvaluationsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => EvaluationsRecord.fromSnapshot(s));

  static Future<EvaluationsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => EvaluationsRecord.fromSnapshot(s));

  static EvaluationsRecord fromSnapshot(DocumentSnapshot snapshot) =>
      EvaluationsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static EvaluationsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      EvaluationsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'EvaluationsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is EvaluationsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createEvaluationsRecordData({
  String? name,
  String? description,
  int? position,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'name': name,
      'description': description,
      'position': position,
    }.withoutNulls,
  );

  return firestoreData;
}

class EvaluationsRecordDocumentEquality implements Equality<EvaluationsRecord> {
  const EvaluationsRecordDocumentEquality();

  @override
  bool equals(EvaluationsRecord? e1, EvaluationsRecord? e2) {
    return e1?.name == e2?.name &&
        e1?.description == e2?.description &&
        e1?.position == e2?.position;
  }

  @override
  int hash(EvaluationsRecord? e) =>
      const ListEquality().hash([e?.name, e?.description, e?.position]);

  @override
  bool isValidKey(Object? o) => o is EvaluationsRecord;
}
