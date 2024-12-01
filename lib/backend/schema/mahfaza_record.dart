import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';
import '/backend/schema/enums/enums.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class MahfazaRecord extends FirestoreRecord {
  MahfazaRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "NAME" field.
  String? _name;
  String get name => _name ?? '';
  bool hasName() => _name != null;

  // "NUMBER" field.
  int? _number;
  int get number => _number ?? 0;
  bool hasNumber() => _number != null;

  void _initializeFields() {
    _name = snapshotData['NAME'] as String?;
    _number = castToType<int>(snapshotData['NUMBER']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('MAHFAZA');

  static Stream<MahfazaRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => MahfazaRecord.fromSnapshot(s));

  static Future<MahfazaRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => MahfazaRecord.fromSnapshot(s));

  static MahfazaRecord fromSnapshot(DocumentSnapshot snapshot) =>
      MahfazaRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static MahfazaRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      MahfazaRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'MahfazaRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is MahfazaRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createMahfazaRecordData({
  String? name,
  int? number,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'NAME': name,
      'NUMBER': number,
    }.withoutNulls,
  );

  return firestoreData;
}

class MahfazaRecordDocumentEquality implements Equality<MahfazaRecord> {
  const MahfazaRecordDocumentEquality();

  @override
  bool equals(MahfazaRecord? e1, MahfazaRecord? e2) {
    return e1?.name == e2?.name && e1?.number == e2?.number;
  }

  @override
  int hash(MahfazaRecord? e) => const ListEquality().hash([e?.name, e?.number]);

  @override
  bool isValidKey(Object? o) => o is MahfazaRecord;
}
