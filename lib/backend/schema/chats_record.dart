import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';
import '/backend/schema/enums/enums.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ChatsRecord extends FirestoreRecord {
  ChatsRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "userref" field.
  List<DocumentReference>? _userref;
  List<DocumentReference> get userref => _userref ?? const [];
  bool hasUserref() => _userref != null;

  // "usera" field.
  DocumentReference? _usera;
  DocumentReference? get usera => _usera;
  bool hasUsera() => _usera != null;

  // "userb" field.
  DocumentReference? _userb;
  DocumentReference? get userb => _userb;
  bool hasUserb() => _userb != null;

  // "last_message" field.
  String? _lastMessage;
  String get lastMessage => _lastMessage ?? '';
  bool hasLastMessage() => _lastMessage != null;

  // "last_massege_time" field.
  DateTime? _lastMassegeTime;
  DateTime? get lastMassegeTime => _lastMassegeTime;
  bool hasLastMassegeTime() => _lastMassegeTime != null;

  // "last_message_seen_by" field.
  List<DocumentReference>? _lastMessageSeenBy;
  List<DocumentReference> get lastMessageSeenBy =>
      _lastMessageSeenBy ?? const [];
  bool hasLastMessageSeenBy() => _lastMessageSeenBy != null;

  // "last_message_sent" field.
  DocumentReference? _lastMessageSent;
  DocumentReference? get lastMessageSent => _lastMessageSent;
  bool hasLastMessageSent() => _lastMessageSent != null;

  // "users" field.
  List<DocumentReference>? _users;
  List<DocumentReference> get users => _users ?? const [];
  bool hasUsers() => _users != null;

  // "user_a" field.
  DocumentReference? _userA;
  DocumentReference? get userA => _userA;
  bool hasUserA() => _userA != null;

  // "user_b" field.
  DocumentReference? _userB;
  DocumentReference? get userB => _userB;
  bool hasUserB() => _userB != null;

  // "last_message_time" field.
  DateTime? _lastMessageTime;
  DateTime? get lastMessageTime => _lastMessageTime;
  bool hasLastMessageTime() => _lastMessageTime != null;

  // "last_message_sent_by" field.
  DocumentReference? _lastMessageSentBy;
  DocumentReference? get lastMessageSentBy => _lastMessageSentBy;
  bool hasLastMessageSentBy() => _lastMessageSentBy != null;

  void _initializeFields() {
    _userref = getDataList(snapshotData['userref']);
    _usera = snapshotData['usera'] as DocumentReference?;
    _userb = snapshotData['userb'] as DocumentReference?;
    _lastMessage = snapshotData['last_message'] as String?;
    _lastMassegeTime = snapshotData['last_massege_time'] as DateTime?;
    _lastMessageSeenBy = getDataList(snapshotData['last_message_seen_by']);
    _lastMessageSent = snapshotData['last_message_sent'] as DocumentReference?;
    _users = getDataList(snapshotData['users']);
    _userA = snapshotData['user_a'] as DocumentReference?;
    _userB = snapshotData['user_b'] as DocumentReference?;
    _lastMessageTime = snapshotData['last_message_time'] as DateTime?;
    _lastMessageSentBy =
        snapshotData['last_message_sent_by'] as DocumentReference?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('chats');

  static Stream<ChatsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => ChatsRecord.fromSnapshot(s));

  static Future<ChatsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => ChatsRecord.fromSnapshot(s));

  static ChatsRecord fromSnapshot(DocumentSnapshot snapshot) => ChatsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static ChatsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      ChatsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'ChatsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is ChatsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createChatsRecordData({
  DocumentReference? usera,
  DocumentReference? userb,
  String? lastMessage,
  DateTime? lastMassegeTime,
  DocumentReference? lastMessageSent,
  DocumentReference? userA,
  DocumentReference? userB,
  DateTime? lastMessageTime,
  DocumentReference? lastMessageSentBy,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'usera': usera,
      'userb': userb,
      'last_message': lastMessage,
      'last_massege_time': lastMassegeTime,
      'last_message_sent': lastMessageSent,
      'user_a': userA,
      'user_b': userB,
      'last_message_time': lastMessageTime,
      'last_message_sent_by': lastMessageSentBy,
    }.withoutNulls,
  );

  return firestoreData;
}

class ChatsRecordDocumentEquality implements Equality<ChatsRecord> {
  const ChatsRecordDocumentEquality();

  @override
  bool equals(ChatsRecord? e1, ChatsRecord? e2) {
    const listEquality = ListEquality();
    return listEquality.equals(e1?.userref, e2?.userref) &&
        e1?.usera == e2?.usera &&
        e1?.userb == e2?.userb &&
        e1?.lastMessage == e2?.lastMessage &&
        e1?.lastMassegeTime == e2?.lastMassegeTime &&
        listEquality.equals(e1?.lastMessageSeenBy, e2?.lastMessageSeenBy) &&
        e1?.lastMessageSent == e2?.lastMessageSent &&
        listEquality.equals(e1?.users, e2?.users) &&
        e1?.userA == e2?.userA &&
        e1?.userB == e2?.userB &&
        e1?.lastMessageTime == e2?.lastMessageTime &&
        e1?.lastMessageSentBy == e2?.lastMessageSentBy;
  }

  @override
  int hash(ChatsRecord? e) => const ListEquality().hash([
        e?.userref,
        e?.usera,
        e?.userb,
        e?.lastMessage,
        e?.lastMassegeTime,
        e?.lastMessageSeenBy,
        e?.lastMessageSent,
        e?.users,
        e?.userA,
        e?.userB,
        e?.lastMessageTime,
        e?.lastMessageSentBy
      ]);

  @override
  bool isValidKey(Object? o) => o is ChatsRecord;
}
