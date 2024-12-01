import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';
import '/backend/schema/enums/enums.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ChatmessageRecord extends FirestoreRecord {
  ChatmessageRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "user" field.
  DocumentReference? _user;
  DocumentReference? get user => _user;
  bool hasUser() => _user != null;

  // "chat" field.
  DocumentReference? _chat;
  DocumentReference? get chat => _chat;
  bool hasChat() => _chat != null;

  // "text" field.
  String? _text;
  String get text => _text ?? '';
  bool hasText() => _text != null;

  // "image" field.
  String? _image;
  String get image => _image ?? '';
  bool hasImage() => _image != null;

  // "timestamp" field.
  DateTime? _timestamp;
  DateTime? get timestamp => _timestamp;
  bool hasTimestamp() => _timestamp != null;

  void _initializeFields() {
    _user = snapshotData['user'] as DocumentReference?;
    _chat = snapshotData['chat'] as DocumentReference?;
    _text = snapshotData['text'] as String?;
    _image = snapshotData['image'] as String?;
    _timestamp = snapshotData['timestamp'] as DateTime?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('chatmessage');

  static Stream<ChatmessageRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => ChatmessageRecord.fromSnapshot(s));

  static Future<ChatmessageRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => ChatmessageRecord.fromSnapshot(s));

  static ChatmessageRecord fromSnapshot(DocumentSnapshot snapshot) =>
      ChatmessageRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static ChatmessageRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      ChatmessageRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'ChatmessageRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is ChatmessageRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createChatmessageRecordData({
  DocumentReference? user,
  DocumentReference? chat,
  String? text,
  String? image,
  DateTime? timestamp,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'user': user,
      'chat': chat,
      'text': text,
      'image': image,
      'timestamp': timestamp,
    }.withoutNulls,
  );

  return firestoreData;
}

class ChatmessageRecordDocumentEquality implements Equality<ChatmessageRecord> {
  const ChatmessageRecordDocumentEquality();

  @override
  bool equals(ChatmessageRecord? e1, ChatmessageRecord? e2) {
    return e1?.user == e2?.user &&
        e1?.chat == e2?.chat &&
        e1?.text == e2?.text &&
        e1?.image == e2?.image &&
        e1?.timestamp == e2?.timestamp;
  }

  @override
  int hash(ChatmessageRecord? e) => const ListEquality()
      .hash([e?.user, e?.chat, e?.text, e?.image, e?.timestamp]);

  @override
  bool isValidKey(Object? o) => o is ChatmessageRecord;
}
