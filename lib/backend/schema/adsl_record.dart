import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';
import '/backend/schema/enums/enums.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class AdslRecord extends FirestoreRecord {
  AdslRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  bool hasName() => _name != null;

  // "mainmname" field.
  String? _mainmname;
  String get mainmname => _mainmname ?? '';
  bool hasMainmname() => _mainmname != null;

  // "id" field.
  String? _id;
  String get id => _id ?? '';
  bool hasId() => _id != null;

  // "idmain" field.
  double? _idmain;
  double get idmain => _idmain ?? 0.0;
  bool hasIdmain() => _idmain != null;

  // "price" field.
  double? _price;
  double get price => _price ?? 0.0;
  bool hasPrice() => _price != null;

  // "cost" field.
  double? _cost;
  double get cost => _cost ?? 0.0;
  bool hasCost() => _cost != null;

  // "TIME" field.
  DateTime? _time;
  DateTime? get time => _time;
  bool hasTime() => _time != null;

  void _initializeFields() {
    _name = snapshotData['name'] as String?;
    _mainmname = snapshotData['mainmname'] as String?;
    _id = snapshotData['id'] as String?;
    _idmain = castToType<double>(snapshotData['idmain']);
    _price = castToType<double>(snapshotData['price']);
    _cost = castToType<double>(snapshotData['cost']);
    _time = snapshotData['TIME'] as DateTime?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('adsl');

  static Stream<AdslRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => AdslRecord.fromSnapshot(s));

  static Future<AdslRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => AdslRecord.fromSnapshot(s));

  static AdslRecord fromSnapshot(DocumentSnapshot snapshot) => AdslRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static AdslRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      AdslRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'AdslRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is AdslRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createAdslRecordData({
  String? name,
  String? mainmname,
  String? id,
  double? idmain,
  double? price,
  double? cost,
  DateTime? time,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'name': name,
      'mainmname': mainmname,
      'id': id,
      'idmain': idmain,
      'price': price,
      'cost': cost,
      'TIME': time,
    }.withoutNulls,
  );

  return firestoreData;
}

class AdslRecordDocumentEquality implements Equality<AdslRecord> {
  const AdslRecordDocumentEquality();

  @override
  bool equals(AdslRecord? e1, AdslRecord? e2) {
    return e1?.name == e2?.name &&
        e1?.mainmname == e2?.mainmname &&
        e1?.id == e2?.id &&
        e1?.idmain == e2?.idmain &&
        e1?.price == e2?.price &&
        e1?.cost == e2?.cost &&
        e1?.time == e2?.time;
  }

  @override
  int hash(AdslRecord? e) => const ListEquality().hash(
      [e?.name, e?.mainmname, e?.id, e?.idmain, e?.price, e?.cost, e?.time]);

  @override
  bool isValidKey(Object? o) => o is AdslRecord;
}
