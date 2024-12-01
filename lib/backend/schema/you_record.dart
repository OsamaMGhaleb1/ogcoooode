import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';
import '/backend/schema/enums/enums.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class YouRecord extends FirestoreRecord {
  YouRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  bool hasName() => _name != null;

  // "Service" field.
  double? _service;
  double get service => _service ?? 0.0;
  bool hasService() => _service != null;

  // "Amount" field.
  double? _amount;
  double get amount => _amount ?? 0.0;
  bool hasAmount() => _amount != null;

  // "type" field.
  String? _type;
  String get type => _type ?? '';
  bool hasType() => _type != null;

  // "mainname" field.
  String? _mainname;
  String get mainname => _mainname ?? '';
  bool hasMainname() => _mainname != null;

  // "networktype" field.
  String? _networktype;
  String get networktype => _networktype ?? '';
  bool hasNetworktype() => _networktype != null;

  // "id" field.
  String? _id;
  String get id => _id ?? '';
  bool hasId() => _id != null;

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
    _service = castToType<double>(snapshotData['Service']);
    _amount = castToType<double>(snapshotData['Amount']);
    _type = snapshotData['type'] as String?;
    _mainname = snapshotData['mainname'] as String?;
    _networktype = snapshotData['networktype'] as String?;
    _id = snapshotData['id'] as String?;
    _cost = castToType<double>(snapshotData['cost']);
    _time = snapshotData['TIME'] as DateTime?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('you');

  static Stream<YouRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => YouRecord.fromSnapshot(s));

  static Future<YouRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => YouRecord.fromSnapshot(s));

  static YouRecord fromSnapshot(DocumentSnapshot snapshot) => YouRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static YouRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      YouRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'YouRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is YouRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createYouRecordData({
  String? name,
  double? service,
  double? amount,
  String? type,
  String? mainname,
  String? networktype,
  String? id,
  double? cost,
  DateTime? time,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'name': name,
      'Service': service,
      'Amount': amount,
      'type': type,
      'mainname': mainname,
      'networktype': networktype,
      'id': id,
      'cost': cost,
      'TIME': time,
    }.withoutNulls,
  );

  return firestoreData;
}

class YouRecordDocumentEquality implements Equality<YouRecord> {
  const YouRecordDocumentEquality();

  @override
  bool equals(YouRecord? e1, YouRecord? e2) {
    return e1?.name == e2?.name &&
        e1?.service == e2?.service &&
        e1?.amount == e2?.amount &&
        e1?.type == e2?.type &&
        e1?.mainname == e2?.mainname &&
        e1?.networktype == e2?.networktype &&
        e1?.id == e2?.id &&
        e1?.cost == e2?.cost &&
        e1?.time == e2?.time;
  }

  @override
  int hash(YouRecord? e) => const ListEquality().hash([
        e?.name,
        e?.service,
        e?.amount,
        e?.type,
        e?.mainname,
        e?.networktype,
        e?.id,
        e?.cost,
        e?.time
      ]);

  @override
  bool isValidKey(Object? o) => o is YouRecord;
}
