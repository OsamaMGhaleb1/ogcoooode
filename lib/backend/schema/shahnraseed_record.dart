import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';
import '/backend/schema/enums/enums.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ShahnraseedRecord extends FirestoreRecord {
  ShahnraseedRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "CREATTIME" field.
  DateTime? _creattime;
  DateTime? get creattime => _creattime;
  bool hasCreattime() => _creattime != null;

  // "REFRENCE" field.
  DocumentReference? _refrence;
  DocumentReference? get refrence => _refrence;
  bool hasRefrence() => _refrence != null;

  // "price" field.
  double? _price;
  double get price => _price ?? 0.0;
  bool hasPrice() => _price != null;

  // "network" field.
  String? _network;
  String get network => _network ?? '';
  bool hasNetwork() => _network != null;

  // "number" field.
  String? _number;
  String get number => _number ?? '';
  bool hasNumber() => _number != null;

  // "numberref" field.
  int? _numberref;
  int get numberref => _numberref ?? 0;
  bool hasNumberref() => _numberref != null;

  // "IMAGE" field.
  String? _image;
  String get image => _image ?? '';
  bool hasImage() => _image != null;

  // "cost" field.
  double? _cost;
  double get cost => _cost ?? 0.0;
  bool hasCost() => _cost != null;

  // "user" field.
  List<DocumentReference>? _user;
  List<DocumentReference> get user => _user ?? const [];
  bool hasUser() => _user != null;

  // "email" field.
  String? _email;
  String get email => _email ?? '';
  bool hasEmail() => _email != null;

  void _initializeFields() {
    _creattime = snapshotData['CREATTIME'] as DateTime?;
    _refrence = snapshotData['REFRENCE'] as DocumentReference?;
    _price = castToType<double>(snapshotData['price']);
    _network = snapshotData['network'] as String?;
    _number = snapshotData['number'] as String?;
    _numberref = castToType<int>(snapshotData['numberref']);
    _image = snapshotData['IMAGE'] as String?;
    _cost = castToType<double>(snapshotData['cost']);
    _user = getDataList(snapshotData['user']);
    _email = snapshotData['email'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('SHAHNRASEED');

  static Stream<ShahnraseedRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => ShahnraseedRecord.fromSnapshot(s));

  static Future<ShahnraseedRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => ShahnraseedRecord.fromSnapshot(s));

  static ShahnraseedRecord fromSnapshot(DocumentSnapshot snapshot) =>
      ShahnraseedRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static ShahnraseedRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      ShahnraseedRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'ShahnraseedRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is ShahnraseedRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createShahnraseedRecordData({
  DateTime? creattime,
  DocumentReference? refrence,
  double? price,
  String? network,
  String? number,
  int? numberref,
  String? image,
  double? cost,
  String? email,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'CREATTIME': creattime,
      'REFRENCE': refrence,
      'price': price,
      'network': network,
      'number': number,
      'numberref': numberref,
      'IMAGE': image,
      'cost': cost,
      'email': email,
    }.withoutNulls,
  );

  return firestoreData;
}

class ShahnraseedRecordDocumentEquality implements Equality<ShahnraseedRecord> {
  const ShahnraseedRecordDocumentEquality();

  @override
  bool equals(ShahnraseedRecord? e1, ShahnraseedRecord? e2) {
    const listEquality = ListEquality();
    return e1?.creattime == e2?.creattime &&
        e1?.refrence == e2?.refrence &&
        e1?.price == e2?.price &&
        e1?.network == e2?.network &&
        e1?.number == e2?.number &&
        e1?.numberref == e2?.numberref &&
        e1?.image == e2?.image &&
        e1?.cost == e2?.cost &&
        listEquality.equals(e1?.user, e2?.user) &&
        e1?.email == e2?.email;
  }

  @override
  int hash(ShahnraseedRecord? e) => const ListEquality().hash([
        e?.creattime,
        e?.refrence,
        e?.price,
        e?.network,
        e?.number,
        e?.numberref,
        e?.image,
        e?.cost,
        e?.user,
        e?.email
      ]);

  @override
  bool isValidKey(Object? o) => o is ShahnraseedRecord;
}
