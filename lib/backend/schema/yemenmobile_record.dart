import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';
import '/backend/schema/enums/enums.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class YemenmobileRecord extends FirestoreRecord {
  YemenmobileRecord._(
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

  // "id" field.
  String? _id;
  String get id => _id ?? '';
  bool hasId() => _id != null;

  // "type" field.
  String? _type;
  String get type => _type ?? '';
  bool hasType() => _type != null;

  // "MANINAME" field.
  String? _maniname;
  String get maniname => _maniname ?? '';
  bool hasManiname() => _maniname != null;

  // "NETWORKTYPE" field.
  String? _networktype;
  String get networktype => _networktype ?? '';
  bool hasNetworktype() => _networktype != null;

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
    _id = snapshotData['id'] as String?;
    _type = snapshotData['type'] as String?;
    _maniname = snapshotData['MANINAME'] as String?;
    _networktype = snapshotData['NETWORKTYPE'] as String?;
    _cost = castToType<double>(snapshotData['cost']);
    _time = snapshotData['TIME'] as DateTime?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('yemenmobile');

  static Stream<YemenmobileRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => YemenmobileRecord.fromSnapshot(s));

  static Future<YemenmobileRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => YemenmobileRecord.fromSnapshot(s));

  static YemenmobileRecord fromSnapshot(DocumentSnapshot snapshot) =>
      YemenmobileRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static YemenmobileRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      YemenmobileRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'YemenmobileRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is YemenmobileRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createYemenmobileRecordData({
  String? name,
  double? service,
  double? amount,
  String? id,
  String? type,
  String? maniname,
  String? networktype,
  double? cost,
  DateTime? time,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'name': name,
      'Service': service,
      'Amount': amount,
      'id': id,
      'type': type,
      'MANINAME': maniname,
      'NETWORKTYPE': networktype,
      'cost': cost,
      'TIME': time,
    }.withoutNulls,
  );

  return firestoreData;
}

class YemenmobileRecordDocumentEquality implements Equality<YemenmobileRecord> {
  const YemenmobileRecordDocumentEquality();

  @override
  bool equals(YemenmobileRecord? e1, YemenmobileRecord? e2) {
    return e1?.name == e2?.name &&
        e1?.service == e2?.service &&
        e1?.amount == e2?.amount &&
        e1?.id == e2?.id &&
        e1?.type == e2?.type &&
        e1?.maniname == e2?.maniname &&
        e1?.networktype == e2?.networktype &&
        e1?.cost == e2?.cost &&
        e1?.time == e2?.time;
  }

  @override
  int hash(YemenmobileRecord? e) => const ListEquality().hash([
        e?.name,
        e?.service,
        e?.amount,
        e?.id,
        e?.type,
        e?.maniname,
        e?.networktype,
        e?.cost,
        e?.time
      ]);

  @override
  bool isValidKey(Object? o) => o is YemenmobileRecord;
}
