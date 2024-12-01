import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';
import '/backend/schema/enums/enums.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class Yemen4gRecord extends FirestoreRecord {
  Yemen4gRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  bool hasName() => _name != null;

  // "price" field.
  double? _price;
  double get price => _price ?? 0.0;
  bool hasPrice() => _price != null;

  // "id" field.
  double? _id;
  double get id => _id ?? 0.0;
  bool hasId() => _id != null;

  // "mainname" field.
  String? _mainname;
  String get mainname => _mainname ?? '';
  bool hasMainname() => _mainname != null;

  // "idmain" field.
  String? _idmain;
  String get idmain => _idmain ?? '';
  bool hasIdmain() => _idmain != null;

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
    _price = castToType<double>(snapshotData['price']);
    _id = castToType<double>(snapshotData['id']);
    _mainname = snapshotData['mainname'] as String?;
    _idmain = snapshotData['idmain'] as String?;
    _cost = castToType<double>(snapshotData['cost']);
    _time = snapshotData['TIME'] as DateTime?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('yemen4g');

  static Stream<Yemen4gRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => Yemen4gRecord.fromSnapshot(s));

  static Future<Yemen4gRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => Yemen4gRecord.fromSnapshot(s));

  static Yemen4gRecord fromSnapshot(DocumentSnapshot snapshot) =>
      Yemen4gRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static Yemen4gRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      Yemen4gRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'Yemen4gRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is Yemen4gRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createYemen4gRecordData({
  String? name,
  double? price,
  double? id,
  String? mainname,
  String? idmain,
  double? cost,
  DateTime? time,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'name': name,
      'price': price,
      'id': id,
      'mainname': mainname,
      'idmain': idmain,
      'cost': cost,
      'TIME': time,
    }.withoutNulls,
  );

  return firestoreData;
}

class Yemen4gRecordDocumentEquality implements Equality<Yemen4gRecord> {
  const Yemen4gRecordDocumentEquality();

  @override
  bool equals(Yemen4gRecord? e1, Yemen4gRecord? e2) {
    return e1?.name == e2?.name &&
        e1?.price == e2?.price &&
        e1?.id == e2?.id &&
        e1?.mainname == e2?.mainname &&
        e1?.idmain == e2?.idmain &&
        e1?.cost == e2?.cost &&
        e1?.time == e2?.time;
  }

  @override
  int hash(Yemen4gRecord? e) => const ListEquality().hash(
      [e?.name, e?.price, e?.id, e?.mainname, e?.idmain, e?.cost, e?.time]);

  @override
  bool isValidKey(Object? o) => o is Yemen4gRecord;
}
