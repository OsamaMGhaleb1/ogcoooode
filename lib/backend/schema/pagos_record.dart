import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';
import '/backend/schema/enums/enums.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class PagosRecord extends FirestoreRecord {
  PagosRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "Cantidad" field.
  double? _cantidad;
  double get cantidad => _cantidad ?? 0.0;
  bool hasCantidad() => _cantidad != null;

  // "Nota" field.
  String? _nota;
  String get nota => _nota ?? '';
  bool hasNota() => _nota != null;

  // "Fecha" field.
  DateTime? _fecha;
  DateTime? get fecha => _fecha;
  bool hasFecha() => _fecha != null;

  // "Usuario" field.
  DocumentReference? _usuario;
  DocumentReference? get usuario => _usuario;
  bool hasUsuario() => _usuario != null;

  // "Usuarios" field.
  List<DocumentReference>? _usuarios;
  List<DocumentReference> get usuarios => _usuarios ?? const [];
  bool hasUsuarios() => _usuarios != null;

  // "Receptor" field.
  DocumentReference? _receptor;
  DocumentReference? get receptor => _receptor;
  bool hasReceptor() => _receptor != null;

  // "corrence" field.
  String? _corrence;
  String get corrence => _corrence ?? '';
  bool hasCorrence() => _corrence != null;

  // "numberref" field.
  int? _numberref;
  int get numberref => _numberref ?? 0;
  bool hasNumberref() => _numberref != null;

  void _initializeFields() {
    _cantidad = castToType<double>(snapshotData['Cantidad']);
    _nota = snapshotData['Nota'] as String?;
    _fecha = snapshotData['Fecha'] as DateTime?;
    _usuario = snapshotData['Usuario'] as DocumentReference?;
    _usuarios = getDataList(snapshotData['Usuarios']);
    _receptor = snapshotData['Receptor'] as DocumentReference?;
    _corrence = snapshotData['corrence'] as String?;
    _numberref = castToType<int>(snapshotData['numberref']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Pagos');

  static Stream<PagosRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => PagosRecord.fromSnapshot(s));

  static Future<PagosRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => PagosRecord.fromSnapshot(s));

  static PagosRecord fromSnapshot(DocumentSnapshot snapshot) => PagosRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static PagosRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      PagosRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'PagosRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is PagosRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createPagosRecordData({
  double? cantidad,
  String? nota,
  DateTime? fecha,
  DocumentReference? usuario,
  DocumentReference? receptor,
  String? corrence,
  int? numberref,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'Cantidad': cantidad,
      'Nota': nota,
      'Fecha': fecha,
      'Usuario': usuario,
      'Receptor': receptor,
      'corrence': corrence,
      'numberref': numberref,
    }.withoutNulls,
  );

  return firestoreData;
}

class PagosRecordDocumentEquality implements Equality<PagosRecord> {
  const PagosRecordDocumentEquality();

  @override
  bool equals(PagosRecord? e1, PagosRecord? e2) {
    const listEquality = ListEquality();
    return e1?.cantidad == e2?.cantidad &&
        e1?.nota == e2?.nota &&
        e1?.fecha == e2?.fecha &&
        e1?.usuario == e2?.usuario &&
        listEquality.equals(e1?.usuarios, e2?.usuarios) &&
        e1?.receptor == e2?.receptor &&
        e1?.corrence == e2?.corrence &&
        e1?.numberref == e2?.numberref;
  }

  @override
  int hash(PagosRecord? e) => const ListEquality().hash([
        e?.cantidad,
        e?.nota,
        e?.fecha,
        e?.usuario,
        e?.usuarios,
        e?.receptor,
        e?.corrence,
        e?.numberref
      ]);

  @override
  bool isValidKey(Object? o) => o is PagosRecord;
}
