// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';
import '/backend/schema/enums/enums.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class LoanStruct extends FFFirebaseStruct {
  LoanStruct({
    String? sd,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _sd = sd,
        super(firestoreUtilData);

  // "sd" field.
  String? _sd;
  String get sd => _sd ?? '';
  set sd(String? val) => _sd = val;

  bool hasSd() => _sd != null;

  static LoanStruct fromMap(Map<String, dynamic> data) => LoanStruct(
        sd: data['sd'] as String?,
      );

  static LoanStruct? maybeFromMap(dynamic data) =>
      data is Map ? LoanStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'sd': _sd,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'sd': serializeParam(
          _sd,
          ParamType.String,
        ),
      }.withoutNulls;

  static LoanStruct fromSerializableMap(Map<String, dynamic> data) =>
      LoanStruct(
        sd: deserializeParam(
          data['sd'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'LoanStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is LoanStruct && sd == other.sd;
  }

  @override
  int get hashCode => const ListEquality().hash([sd]);
}

LoanStruct createLoanStruct({
  String? sd,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    LoanStruct(
      sd: sd,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

LoanStruct? updateLoanStruct(
  LoanStruct? loan, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    loan
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addLoanStructData(
  Map<String, dynamic> firestoreData,
  LoanStruct? loan,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (loan == null) {
    return;
  }
  if (loan.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields = !forFieldValue && loan.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final loanData = getLoanFirestoreData(loan, forFieldValue);
  final nestedData = loanData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = loan.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getLoanFirestoreData(
  LoanStruct? loan, [
  bool forFieldValue = false,
]) {
  if (loan == null) {
    return {};
  }
  final firestoreData = mapToFirestore(loan.toMap());

  // Add any Firestore field values
  loan.firestoreUtilData.fieldValues.forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getLoanListFirestoreData(
  List<LoanStruct>? loans,
) =>
    loans?.map((e) => getLoanFirestoreData(e, true)).toList() ?? [];
