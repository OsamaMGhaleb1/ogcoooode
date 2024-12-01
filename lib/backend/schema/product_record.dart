import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';
import '/backend/schema/enums/enums.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ProductRecord extends FirestoreRecord {
  ProductRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "product_information" field.
  ProductStruct? _productInformation;
  ProductStruct get productInformation =>
      _productInformation ?? ProductStruct();
  bool hasProductInformation() => _productInformation != null;

  // "product_id" field.
  String? _productId;
  String get productId => _productId ?? '';
  bool hasProductId() => _productId != null;

  // "popular" field.
  bool? _popular;
  bool get popular => _popular ?? false;
  bool hasPopular() => _popular != null;

  // "special_offer" field.
  bool? _specialOffer;
  bool get specialOffer => _specialOffer ?? false;
  bool hasSpecialOffer() => _specialOffer != null;

  // "category" field.
  String? _category;
  String get category => _category ?? '';
  bool hasCategory() => _category != null;

  // "quantity" field.
  int? _quantity;
  int get quantity => _quantity ?? 0;
  bool hasQuantity() => _quantity != null;

  // "special_offer_ref" field.
  DocumentReference? _specialOfferRef;
  DocumentReference? get specialOfferRef => _specialOfferRef;
  bool hasSpecialOfferRef() => _specialOfferRef != null;

  // "users_liked" field.
  List<DocumentReference>? _usersLiked;
  List<DocumentReference> get usersLiked => _usersLiked ?? const [];
  bool hasUsersLiked() => _usersLiked != null;

  // "usersReviewed" field.
  List<DocumentReference>? _usersReviewed;
  List<DocumentReference> get usersReviewed => _usersReviewed ?? const [];
  bool hasUsersReviewed() => _usersReviewed != null;

  // "userBought" field.
  List<DocumentReference>? _userBought;
  List<DocumentReference> get userBought => _userBought ?? const [];
  bool hasUserBought() => _userBought != null;

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  bool hasName() => _name != null;

  // "despackage" field.
  String? _despackage;
  String get despackage => _despackage ?? '';
  bool hasDespackage() => _despackage != null;

  // "price" field.
  double? _price;
  double get price => _price ?? 0.0;
  bool hasPrice() => _price != null;

  // "pricerial" field.
  double? _pricerial;
  double get pricerial => _pricerial ?? 0.0;
  bool hasPricerial() => _pricerial != null;

  // "host" field.
  DocumentReference? _host;
  DocumentReference? get host => _host;
  bool hasHost() => _host != null;

  // "upcomming" field.
  bool? _upcomming;
  bool get upcomming => _upcomming ?? false;
  bool hasUpcomming() => _upcomming != null;

  // "beingdate" field.
  DateTime? _beingdate;
  DateTime? get beingdate => _beingdate;
  bool hasBeingdate() => _beingdate != null;

  // "TYPESERVES" field.
  String? _typeserves;
  String get typeserves => _typeserves ?? '';
  bool hasTypeserves() => _typeserves != null;

  // "NOTE" field.
  String? _note;
  String get note => _note ?? '';
  bool hasNote() => _note != null;

  // "typeshahn" field.
  String? _typeshahn;
  String get typeshahn => _typeshahn ?? '';
  bool hasTypeshahn() => _typeshahn != null;

  // "country" field.
  String? _country;
  String get country => _country ?? '';
  bool hasCountry() => _country != null;

  // "password" field.
  String? _password;
  String get password => _password ?? '';
  bool hasPassword() => _password != null;

  // "refundmethod" field.
  String? _refundmethod;
  String get refundmethod => _refundmethod ?? '';
  bool hasRefundmethod() => _refundmethod != null;

  void _initializeFields() {
    _productInformation =
        ProductStruct.maybeFromMap(snapshotData['product_information']);
    _productId = snapshotData['product_id'] as String?;
    _popular = snapshotData['popular'] as bool?;
    _specialOffer = snapshotData['special_offer'] as bool?;
    _category = snapshotData['category'] as String?;
    _quantity = castToType<int>(snapshotData['quantity']);
    _specialOfferRef = snapshotData['special_offer_ref'] as DocumentReference?;
    _usersLiked = getDataList(snapshotData['users_liked']);
    _usersReviewed = getDataList(snapshotData['usersReviewed']);
    _userBought = getDataList(snapshotData['userBought']);
    _name = snapshotData['name'] as String?;
    _despackage = snapshotData['despackage'] as String?;
    _price = castToType<double>(snapshotData['price']);
    _pricerial = castToType<double>(snapshotData['pricerial']);
    _host = snapshotData['host'] as DocumentReference?;
    _upcomming = snapshotData['upcomming'] as bool?;
    _beingdate = snapshotData['beingdate'] as DateTime?;
    _typeserves = snapshotData['TYPESERVES'] as String?;
    _note = snapshotData['NOTE'] as String?;
    _typeshahn = snapshotData['typeshahn'] as String?;
    _country = snapshotData['country'] as String?;
    _password = snapshotData['password'] as String?;
    _refundmethod = snapshotData['refundmethod'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('product');

  static Stream<ProductRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => ProductRecord.fromSnapshot(s));

  static Future<ProductRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => ProductRecord.fromSnapshot(s));

  static ProductRecord fromSnapshot(DocumentSnapshot snapshot) =>
      ProductRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static ProductRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      ProductRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'ProductRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is ProductRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createProductRecordData({
  ProductStruct? productInformation,
  String? productId,
  bool? popular,
  bool? specialOffer,
  String? category,
  int? quantity,
  DocumentReference? specialOfferRef,
  String? name,
  String? despackage,
  double? price,
  double? pricerial,
  DocumentReference? host,
  bool? upcomming,
  DateTime? beingdate,
  String? typeserves,
  String? note,
  String? typeshahn,
  String? country,
  String? password,
  String? refundmethod,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'product_information': ProductStruct().toMap(),
      'product_id': productId,
      'popular': popular,
      'special_offer': specialOffer,
      'category': category,
      'quantity': quantity,
      'special_offer_ref': specialOfferRef,
      'name': name,
      'despackage': despackage,
      'price': price,
      'pricerial': pricerial,
      'host': host,
      'upcomming': upcomming,
      'beingdate': beingdate,
      'TYPESERVES': typeserves,
      'NOTE': note,
      'typeshahn': typeshahn,
      'country': country,
      'password': password,
      'refundmethod': refundmethod,
    }.withoutNulls,
  );

  // Handle nested data for "product_information" field.
  addProductStructData(
      firestoreData, productInformation, 'product_information');

  return firestoreData;
}

class ProductRecordDocumentEquality implements Equality<ProductRecord> {
  const ProductRecordDocumentEquality();

  @override
  bool equals(ProductRecord? e1, ProductRecord? e2) {
    const listEquality = ListEquality();
    return e1?.productInformation == e2?.productInformation &&
        e1?.productId == e2?.productId &&
        e1?.popular == e2?.popular &&
        e1?.specialOffer == e2?.specialOffer &&
        e1?.category == e2?.category &&
        e1?.quantity == e2?.quantity &&
        e1?.specialOfferRef == e2?.specialOfferRef &&
        listEquality.equals(e1?.usersLiked, e2?.usersLiked) &&
        listEquality.equals(e1?.usersReviewed, e2?.usersReviewed) &&
        listEquality.equals(e1?.userBought, e2?.userBought) &&
        e1?.name == e2?.name &&
        e1?.despackage == e2?.despackage &&
        e1?.price == e2?.price &&
        e1?.pricerial == e2?.pricerial &&
        e1?.host == e2?.host &&
        e1?.upcomming == e2?.upcomming &&
        e1?.beingdate == e2?.beingdate &&
        e1?.typeserves == e2?.typeserves &&
        e1?.note == e2?.note &&
        e1?.typeshahn == e2?.typeshahn &&
        e1?.country == e2?.country &&
        e1?.password == e2?.password &&
        e1?.refundmethod == e2?.refundmethod;
  }

  @override
  int hash(ProductRecord? e) => const ListEquality().hash([
        e?.productInformation,
        e?.productId,
        e?.popular,
        e?.specialOffer,
        e?.category,
        e?.quantity,
        e?.specialOfferRef,
        e?.usersLiked,
        e?.usersReviewed,
        e?.userBought,
        e?.name,
        e?.despackage,
        e?.price,
        e?.pricerial,
        e?.host,
        e?.upcomming,
        e?.beingdate,
        e?.typeserves,
        e?.note,
        e?.typeshahn,
        e?.country,
        e?.password,
        e?.refundmethod
      ]);

  @override
  bool isValidKey(Object? o) => o is ProductRecord;
}
