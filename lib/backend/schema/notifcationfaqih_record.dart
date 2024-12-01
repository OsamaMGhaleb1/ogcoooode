import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';
import '/backend/schema/enums/enums.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class NotifcationfaqihRecord extends FirestoreRecord {
  NotifcationfaqihRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "title" field.
  String? _title;
  String get title => _title ?? '';
  bool hasTitle() => _title != null;

  // "messenger" field.
  String? _messenger;
  String get messenger => _messenger ?? '';
  bool hasMessenger() => _messenger != null;

  // "seen" field.
  bool? _seen;
  bool get seen => _seen ?? false;
  bool hasSeen() => _seen != null;

  // "date" field.
  DateTime? _date;
  DateTime? get date => _date;
  bool hasDate() => _date != null;

  void _initializeFields() {
    _title = snapshotData['title'] as String?;
    _messenger = snapshotData['messenger'] as String?;
    _seen = snapshotData['seen'] as bool?;
    _date = snapshotData['date'] as DateTime?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('notifcationfaqih');

  static Stream<NotifcationfaqihRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => NotifcationfaqihRecord.fromSnapshot(s));

  static Future<NotifcationfaqihRecord> getDocumentOnce(
          DocumentReference ref) =>
      ref.get().then((s) => NotifcationfaqihRecord.fromSnapshot(s));

  static NotifcationfaqihRecord fromSnapshot(DocumentSnapshot snapshot) =>
      NotifcationfaqihRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static NotifcationfaqihRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      NotifcationfaqihRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'NotifcationfaqihRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is NotifcationfaqihRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createNotifcationfaqihRecordData({
  String? title,
  String? messenger,
  bool? seen,
  DateTime? date,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'title': title,
      'messenger': messenger,
      'seen': seen,
      'date': date,
    }.withoutNulls,
  );

  return firestoreData;
}

class NotifcationfaqihRecordDocumentEquality
    implements Equality<NotifcationfaqihRecord> {
  const NotifcationfaqihRecordDocumentEquality();

  @override
  bool equals(NotifcationfaqihRecord? e1, NotifcationfaqihRecord? e2) {
    return e1?.title == e2?.title &&
        e1?.messenger == e2?.messenger &&
        e1?.seen == e2?.seen &&
        e1?.date == e2?.date;
  }

  @override
  int hash(NotifcationfaqihRecord? e) =>
      const ListEquality().hash([e?.title, e?.messenger, e?.seen, e?.date]);

  @override
  bool isValidKey(Object? o) => o is NotifcationfaqihRecord;
}
