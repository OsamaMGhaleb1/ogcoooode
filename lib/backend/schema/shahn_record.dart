import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';
import '/backend/schema/enums/enums.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ShahnRecord extends FirestoreRecord {
  ShahnRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "description" field.
  String? _description;
  String get description => _description ?? '';
  bool hasDescription() => _description != null;

  // "id" field.
  int? _id;
  int get id => _id ?? 0;
  bool hasId() => _id != null;

  // "image" field.
  String? _image;
  String get image => _image ?? '';
  bool hasImage() => _image != null;

  // "catogry" field.
  String? _catogry;
  String get catogry => _catogry ?? '';
  bool hasCatogry() => _catogry != null;

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  bool hasName() => _name != null;

  void _initializeFields() {
    _description = snapshotData['description'] as String?;
    _id = castToType<int>(snapshotData['id']);
    _image = snapshotData['image'] as String?;
    _catogry = snapshotData['catogry'] as String?;
    _name = snapshotData['name'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('shahn');

  static Stream<ShahnRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => ShahnRecord.fromSnapshot(s));

  static Future<ShahnRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => ShahnRecord.fromSnapshot(s));

  static ShahnRecord fromSnapshot(DocumentSnapshot snapshot) => ShahnRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static ShahnRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      ShahnRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'ShahnRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is ShahnRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createShahnRecordData({
  String? description,
  int? id,
  String? image,
  String? catogry,
  String? name,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'description': description,
      'id': id,
      'image': image,
      'catogry': catogry,
      'name': name,
    }.withoutNulls,
  );

  return firestoreData;
}

class ShahnRecordDocumentEquality implements Equality<ShahnRecord> {
  const ShahnRecordDocumentEquality();

  @override
  bool equals(ShahnRecord? e1, ShahnRecord? e2) {
    return e1?.description == e2?.description &&
        e1?.id == e2?.id &&
        e1?.image == e2?.image &&
        e1?.catogry == e2?.catogry &&
        e1?.name == e2?.name;
  }

  @override
  int hash(ShahnRecord? e) => const ListEquality()
      .hash([e?.description, e?.id, e?.image, e?.catogry, e?.name]);

  @override
  bool isValidKey(Object? o) => o is ShahnRecord;
}
