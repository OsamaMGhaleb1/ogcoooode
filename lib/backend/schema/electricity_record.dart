import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';
import '/backend/schema/enums/enums.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ElectricityRecord extends FirestoreRecord {
  ElectricityRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "area" field.
  String? _area;
  String get area => _area ?? '';
  bool hasArea() => _area != null;

  // "numarea" field.
  String? _numarea;
  String get numarea => _numarea ?? '';
  bool hasNumarea() => _numarea != null;

  void _initializeFields() {
    _area = snapshotData['area'] as String?;
    _numarea = snapshotData['numarea'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Electricity');

  static Stream<ElectricityRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => ElectricityRecord.fromSnapshot(s));

  static Future<ElectricityRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => ElectricityRecord.fromSnapshot(s));

  static ElectricityRecord fromSnapshot(DocumentSnapshot snapshot) =>
      ElectricityRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static ElectricityRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      ElectricityRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'ElectricityRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is ElectricityRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createElectricityRecordData({
  String? area,
  String? numarea,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'area': area,
      'numarea': numarea,
    }.withoutNulls,
  );

  return firestoreData;
}

class ElectricityRecordDocumentEquality implements Equality<ElectricityRecord> {
  const ElectricityRecordDocumentEquality();

  @override
  bool equals(ElectricityRecord? e1, ElectricityRecord? e2) {
    return e1?.area == e2?.area && e1?.numarea == e2?.numarea;
  }

  @override
  int hash(ElectricityRecord? e) =>
      const ListEquality().hash([e?.area, e?.numarea]);

  @override
  bool isValidKey(Object? o) => o is ElectricityRecord;
}
