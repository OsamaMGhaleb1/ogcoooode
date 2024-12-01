// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';
import '/backend/schema/enums/enums.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ColorStruct extends FFFirebaseStruct {
  ColorStruct({
    Color? waite,
    Color? red,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _waite = waite,
        _red = red,
        super(firestoreUtilData);

  // "waite" field.
  Color? _waite;
  Color get waite => _waite ?? const Color(0xFF2EBB19);
  set waite(Color? val) => _waite = val;

  bool hasWaite() => _waite != null;

  // "red" field.
  Color? _red;
  Color get red => _red ?? const Color(0xFFD00315);
  set red(Color? val) => _red = val;

  bool hasRed() => _red != null;

  static ColorStruct fromMap(Map<String, dynamic> data) => ColorStruct(
        waite: getSchemaColor(data['waite']),
        red: getSchemaColor(data['red']),
      );

  static ColorStruct? maybeFromMap(dynamic data) =>
      data is Map ? ColorStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'waite': _waite,
        'red': _red,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'waite': serializeParam(
          _waite,
          ParamType.Color,
        ),
        'red': serializeParam(
          _red,
          ParamType.Color,
        ),
      }.withoutNulls;

  static ColorStruct fromSerializableMap(Map<String, dynamic> data) =>
      ColorStruct(
        waite: deserializeParam(
          data['waite'],
          ParamType.Color,
          false,
        ),
        red: deserializeParam(
          data['red'],
          ParamType.Color,
          false,
        ),
      );

  @override
  String toString() => 'ColorStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is ColorStruct && waite == other.waite && red == other.red;
  }

  @override
  int get hashCode => const ListEquality().hash([waite, red]);
}

ColorStruct createColorStruct({
  Color? waite,
  Color? red,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    ColorStruct(
      waite: waite,
      red: red,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

ColorStruct? updateColorStruct(
  ColorStruct? color, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    color
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addColorStructData(
  Map<String, dynamic> firestoreData,
  ColorStruct? color,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (color == null) {
    return;
  }
  if (color.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && color.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final colorData = getColorFirestoreData(color, forFieldValue);
  final nestedData = colorData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = color.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getColorFirestoreData(
  ColorStruct? color, [
  bool forFieldValue = false,
]) {
  if (color == null) {
    return {};
  }
  final firestoreData = mapToFirestore(color.toMap());

  // Add any Firestore field values
  color.firestoreUtilData.fieldValues.forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getColorListFirestoreData(
  List<ColorStruct>? colors,
) =>
    colors?.map((e) => getColorFirestoreData(e, true)).toList() ?? [];
