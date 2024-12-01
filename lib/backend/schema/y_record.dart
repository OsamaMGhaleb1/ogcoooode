import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';
import '/backend/schema/enums/enums.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class YRecord extends FirestoreRecord {
  YRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  bool hasName() => _name != null;

  // "service" field.
  double? _service;
  double get service => _service ?? 0.0;
  bool hasService() => _service != null;

  // "amount" field.
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

  // "COAST" field.
  double? _coast;
  double get coast => _coast ?? 0.0;
  bool hasCoast() => _coast != null;

  // "TIME" field.
  DateTime? _time;
  DateTime? get time => _time;
  bool hasTime() => _time != null;

  void _initializeFields() {
    _name = snapshotData['name'] as String?;
    _service = castToType<double>(snapshotData['service']);
    _amount = castToType<double>(snapshotData['amount']);
    _type = snapshotData['type'] as String?;
    _mainname = snapshotData['mainname'] as String?;
    _networktype = snapshotData['networktype'] as String?;
    _id = snapshotData['id'] as String?;
    _coast = castToType<double>(snapshotData['COAST']);
    _time = snapshotData['TIME'] as DateTime?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('y');

  static Stream<YRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => YRecord.fromSnapshot(s));

  static Future<YRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => YRecord.fromSnapshot(s));

  static YRecord fromSnapshot(DocumentSnapshot snapshot) => YRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static YRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      YRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'YRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is YRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createYRecordData({
  String? name,
  double? service,
  double? amount,
  String? type,
  String? mainname,
  String? networktype,
  String? id,
  double? coast,
  DateTime? time,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'name': name,
      'service': service,
      'amount': amount,
      'type': type,
      'mainname': mainname,
      'networktype': networktype,
      'id': id,
      'COAST': coast,
      'TIME': time,
    }.withoutNulls,
  );

  return firestoreData;
}

class YRecordDocumentEquality implements Equality<YRecord> {
  const YRecordDocumentEquality();

  @override
  bool equals(YRecord? e1, YRecord? e2) {
    return e1?.name == e2?.name &&
        e1?.service == e2?.service &&
        e1?.amount == e2?.amount &&
        e1?.type == e2?.type &&
        e1?.mainname == e2?.mainname &&
        e1?.networktype == e2?.networktype &&
        e1?.id == e2?.id &&
        e1?.coast == e2?.coast &&
        e1?.time == e2?.time;
  }

  @override
  int hash(YRecord? e) => const ListEquality().hash([
        e?.name,
        e?.service,
        e?.amount,
        e?.type,
        e?.mainname,
        e?.networktype,
        e?.id,
        e?.coast,
        e?.time
      ]);

  @override
  bool isValidKey(Object? o) => o is YRecord;
}
