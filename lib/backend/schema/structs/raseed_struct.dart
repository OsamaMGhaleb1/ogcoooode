// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';
import '/backend/schema/enums/enums.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class RaseedStruct extends FFFirebaseStruct {
  RaseedStruct({
    String? name,
    int? number,
    String? image,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _name = name,
        _number = number,
        _image = image,
        super(firestoreUtilData);

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  set name(String? val) => _name = val;

  bool hasName() => _name != null;

  // "number" field.
  int? _number;
  int get number => _number ?? 0;
  set number(int? val) => _number = val;

  void incrementNumber(int amount) => number = number + amount;

  bool hasNumber() => _number != null;

  // "image" field.
  String? _image;
  String get image => _image ?? '';
  set image(String? val) => _image = val;

  bool hasImage() => _image != null;

  static RaseedStruct fromMap(Map<String, dynamic> data) => RaseedStruct(
        name: data['name'] as String?,
        number: castToType<int>(data['number']),
        image: data['image'] as String?,
      );

  static RaseedStruct? maybeFromMap(dynamic data) =>
      data is Map ? RaseedStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'name': _name,
        'number': _number,
        'image': _image,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'name': serializeParam(
          _name,
          ParamType.String,
        ),
        'number': serializeParam(
          _number,
          ParamType.int,
        ),
        'image': serializeParam(
          _image,
          ParamType.String,
        ),
      }.withoutNulls;

  static RaseedStruct fromSerializableMap(Map<String, dynamic> data) =>
      RaseedStruct(
        name: deserializeParam(
          data['name'],
          ParamType.String,
          false,
        ),
        number: deserializeParam(
          data['number'],
          ParamType.int,
          false,
        ),
        image: deserializeParam(
          data['image'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'RaseedStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is RaseedStruct &&
        name == other.name &&
        number == other.number &&
        image == other.image;
  }

  @override
  int get hashCode => const ListEquality().hash([name, number, image]);
}

RaseedStruct createRaseedStruct({
  String? name,
  int? number,
  String? image,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    RaseedStruct(
      name: name,
      number: number,
      image: image,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

RaseedStruct? updateRaseedStruct(
  RaseedStruct? raseed, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    raseed
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addRaseedStructData(
  Map<String, dynamic> firestoreData,
  RaseedStruct? raseed,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (raseed == null) {
    return;
  }
  if (raseed.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && raseed.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final raseedData = getRaseedFirestoreData(raseed, forFieldValue);
  final nestedData = raseedData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = raseed.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getRaseedFirestoreData(
  RaseedStruct? raseed, [
  bool forFieldValue = false,
]) {
  if (raseed == null) {
    return {};
  }
  final firestoreData = mapToFirestore(raseed.toMap());

  // Add any Firestore field values
  raseed.firestoreUtilData.fieldValues.forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getRaseedListFirestoreData(
  List<RaseedStruct>? raseeds,
) =>
    raseeds?.map((e) => getRaseedFirestoreData(e, true)).toList() ?? [];
