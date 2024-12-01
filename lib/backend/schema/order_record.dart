import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';
import '/backend/schema/enums/enums.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class OrderRecord extends FirestoreRecord {
  OrderRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "date" field.
  DateTime? _date;
  DateTime? get date => _date;
  bool hasDate() => _date != null;

  // "promo_code" field.
  String? _promoCode;
  String get promoCode => _promoCode ?? '';
  bool hasPromoCode() => _promoCode != null;

  // "shipping_method" field.
  String? _shippingMethod;
  String get shippingMethod => _shippingMethod ?? '';
  bool hasShippingMethod() => _shippingMethod != null;

  // "shipping_address" field.
  DocumentReference? _shippingAddress;
  DocumentReference? get shippingAddress => _shippingAddress;
  bool hasShippingAddress() => _shippingAddress != null;

  // "amount" field.
  double? _amount;
  double get amount => _amount ?? 0.0;
  bool hasAmount() => _amount != null;

  // "products" field.
  List<CartProductStruct>? _products;
  List<CartProductStruct> get products => _products ?? const [];
  bool hasProducts() => _products != null;

  // "paymentCompleted" field.
  bool? _paymentCompleted;
  bool get paymentCompleted => _paymentCompleted ?? false;
  bool hasPaymentCompleted() => _paymentCompleted != null;

  // "discount_or_promo" field.
  double? _discountOrPromo;
  double get discountOrPromo => _discountOrPromo ?? 0.0;
  bool hasDiscountOrPromo() => _discountOrPromo != null;

  // "tax" field.
  double? _tax;
  double get tax => _tax ?? 0.0;
  bool hasTax() => _tax != null;

  // "final_amount_paid" field.
  double? _finalAmountPaid;
  double get finalAmountPaid => _finalAmountPaid ?? 0.0;
  bool hasFinalAmountPaid() => _finalAmountPaid != null;

  // "payment_method" field.
  String? _paymentMethod;
  String get paymentMethod => _paymentMethod ?? '';
  bool hasPaymentMethod() => _paymentMethod != null;

  // "paid_date" field.
  DateTime? _paidDate;
  DateTime? get paidDate => _paidDate;
  bool hasPaidDate() => _paidDate != null;

  // "shipping_timeline" field.
  List<OrderDeliveryTimelineStruct>? _shippingTimeline;
  List<OrderDeliveryTimelineStruct> get shippingTimeline =>
      _shippingTimeline ?? const [];
  bool hasShippingTimeline() => _shippingTimeline != null;

  // "status" field.
  String? _status;
  String get status => _status ?? '';
  bool hasStatus() => _status != null;

  // "user_ref" field.
  DocumentReference? _userRef;
  DocumentReference? get userRef => _userRef;
  bool hasUserRef() => _userRef != null;

  // "upcomming" field.
  bool? _upcomming;
  bool get upcomming => _upcomming ?? false;
  bool hasUpcomming() => _upcomming != null;

  // "prudyctref" field.
  DocumentReference? _prudyctref;
  DocumentReference? get prudyctref => _prudyctref;
  bool hasPrudyctref() => _prudyctref != null;

  // "host" field.
  DocumentReference? _host;
  DocumentReference? get host => _host;
  bool hasHost() => _host != null;

  // "NAME" field.
  String? _name;
  String get name => _name ?? '';
  bool hasName() => _name != null;

  // "PACKAGE" field.
  String? _package;
  String get package => _package ?? '';
  bool hasPackage() => _package != null;

  // "PRICE" field.
  double? _price;
  double get price => _price ?? 0.0;
  bool hasPrice() => _price != null;

  // "QUNTITY" field.
  double? _quntity;
  double get quntity => _quntity ?? 0.0;
  bool hasQuntity() => _quntity != null;

  // "USERNAME" field.
  DocumentReference? _username;
  DocumentReference? get username => _username;
  bool hasUsername() => _username != null;

  // "ID" field.
  String? _id;
  String get id => _id ?? '';
  bool hasId() => _id != null;

  // "EMAILCARD" field.
  String? _emailcard;
  String get emailcard => _emailcard ?? '';
  bool hasEmailcard() => _emailcard != null;

  // "EMAILCODE" field.
  String? _emailcode;
  String get emailcode => _emailcode ?? '';
  bool hasEmailcode() => _emailcode != null;

  // "WHATSAPP" field.
  int? _whatsapp;
  int get whatsapp => _whatsapp ?? 0;
  bool hasWhatsapp() => _whatsapp != null;

  // "PASSWORD" field.
  String? _password;
  String get password => _password ?? '';
  bool hasPassword() => _password != null;

  // "complet" field.
  String? _complet;
  String get complet => _complet ?? '';
  bool hasComplet() => _complet != null;

  // "PRICEYER" field.
  double? _priceyer;
  double get priceyer => _priceyer ?? 0.0;
  bool hasPriceyer() => _priceyer != null;

  // "orderref" field.
  List<DocumentReference>? _orderref;
  List<DocumentReference> get orderref => _orderref ?? const [];
  bool hasOrderref() => _orderref != null;

  // "ordernumbr" field.
  String? _ordernumbr;
  String get ordernumbr => _ordernumbr ?? '';
  bool hasOrdernumbr() => _ordernumbr != null;

  // "email" field.
  String? _email;
  String get email => _email ?? '';
  bool hasEmail() => _email != null;

  void _initializeFields() {
    _date = snapshotData['date'] as DateTime?;
    _promoCode = snapshotData['promo_code'] as String?;
    _shippingMethod = snapshotData['shipping_method'] as String?;
    _shippingAddress = snapshotData['shipping_address'] as DocumentReference?;
    _amount = castToType<double>(snapshotData['amount']);
    _products = getStructList(
      snapshotData['products'],
      CartProductStruct.fromMap,
    );
    _paymentCompleted = snapshotData['paymentCompleted'] as bool?;
    _discountOrPromo = castToType<double>(snapshotData['discount_or_promo']);
    _tax = castToType<double>(snapshotData['tax']);
    _finalAmountPaid = castToType<double>(snapshotData['final_amount_paid']);
    _paymentMethod = snapshotData['payment_method'] as String?;
    _paidDate = snapshotData['paid_date'] as DateTime?;
    _shippingTimeline = getStructList(
      snapshotData['shipping_timeline'],
      OrderDeliveryTimelineStruct.fromMap,
    );
    _status = snapshotData['status'] as String?;
    _userRef = snapshotData['user_ref'] as DocumentReference?;
    _upcomming = snapshotData['upcomming'] as bool?;
    _prudyctref = snapshotData['prudyctref'] as DocumentReference?;
    _host = snapshotData['host'] as DocumentReference?;
    _name = snapshotData['NAME'] as String?;
    _package = snapshotData['PACKAGE'] as String?;
    _price = castToType<double>(snapshotData['PRICE']);
    _quntity = castToType<double>(snapshotData['QUNTITY']);
    _username = snapshotData['USERNAME'] as DocumentReference?;
    _id = snapshotData['ID'] as String?;
    _emailcard = snapshotData['EMAILCARD'] as String?;
    _emailcode = snapshotData['EMAILCODE'] as String?;
    _whatsapp = castToType<int>(snapshotData['WHATSAPP']);
    _password = snapshotData['PASSWORD'] as String?;
    _complet = snapshotData['complet'] as String?;
    _priceyer = castToType<double>(snapshotData['PRICEYER']);
    _orderref = getDataList(snapshotData['orderref']);
    _ordernumbr = snapshotData['ordernumbr'] as String?;
    _email = snapshotData['email'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('order');

  static Stream<OrderRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => OrderRecord.fromSnapshot(s));

  static Future<OrderRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => OrderRecord.fromSnapshot(s));

  static OrderRecord fromSnapshot(DocumentSnapshot snapshot) => OrderRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static OrderRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      OrderRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'OrderRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is OrderRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createOrderRecordData({
  DateTime? date,
  String? promoCode,
  String? shippingMethod,
  DocumentReference? shippingAddress,
  double? amount,
  bool? paymentCompleted,
  double? discountOrPromo,
  double? tax,
  double? finalAmountPaid,
  String? paymentMethod,
  DateTime? paidDate,
  String? status,
  DocumentReference? userRef,
  bool? upcomming,
  DocumentReference? prudyctref,
  DocumentReference? host,
  String? name,
  String? package,
  double? price,
  double? quntity,
  DocumentReference? username,
  String? id,
  String? emailcard,
  String? emailcode,
  int? whatsapp,
  String? password,
  String? complet,
  double? priceyer,
  String? ordernumbr,
  String? email,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'date': date,
      'promo_code': promoCode,
      'shipping_method': shippingMethod,
      'shipping_address': shippingAddress,
      'amount': amount,
      'paymentCompleted': paymentCompleted,
      'discount_or_promo': discountOrPromo,
      'tax': tax,
      'final_amount_paid': finalAmountPaid,
      'payment_method': paymentMethod,
      'paid_date': paidDate,
      'status': status,
      'user_ref': userRef,
      'upcomming': upcomming,
      'prudyctref': prudyctref,
      'host': host,
      'NAME': name,
      'PACKAGE': package,
      'PRICE': price,
      'QUNTITY': quntity,
      'USERNAME': username,
      'ID': id,
      'EMAILCARD': emailcard,
      'EMAILCODE': emailcode,
      'WHATSAPP': whatsapp,
      'PASSWORD': password,
      'complet': complet,
      'PRICEYER': priceyer,
      'ordernumbr': ordernumbr,
      'email': email,
    }.withoutNulls,
  );

  return firestoreData;
}

class OrderRecordDocumentEquality implements Equality<OrderRecord> {
  const OrderRecordDocumentEquality();

  @override
  bool equals(OrderRecord? e1, OrderRecord? e2) {
    const listEquality = ListEquality();
    return e1?.date == e2?.date &&
        e1?.promoCode == e2?.promoCode &&
        e1?.shippingMethod == e2?.shippingMethod &&
        e1?.shippingAddress == e2?.shippingAddress &&
        e1?.amount == e2?.amount &&
        listEquality.equals(e1?.products, e2?.products) &&
        e1?.paymentCompleted == e2?.paymentCompleted &&
        e1?.discountOrPromo == e2?.discountOrPromo &&
        e1?.tax == e2?.tax &&
        e1?.finalAmountPaid == e2?.finalAmountPaid &&
        e1?.paymentMethod == e2?.paymentMethod &&
        e1?.paidDate == e2?.paidDate &&
        listEquality.equals(e1?.shippingTimeline, e2?.shippingTimeline) &&
        e1?.status == e2?.status &&
        e1?.userRef == e2?.userRef &&
        e1?.upcomming == e2?.upcomming &&
        e1?.prudyctref == e2?.prudyctref &&
        e1?.host == e2?.host &&
        e1?.name == e2?.name &&
        e1?.package == e2?.package &&
        e1?.price == e2?.price &&
        e1?.quntity == e2?.quntity &&
        e1?.username == e2?.username &&
        e1?.id == e2?.id &&
        e1?.emailcard == e2?.emailcard &&
        e1?.emailcode == e2?.emailcode &&
        e1?.whatsapp == e2?.whatsapp &&
        e1?.password == e2?.password &&
        e1?.complet == e2?.complet &&
        e1?.priceyer == e2?.priceyer &&
        listEquality.equals(e1?.orderref, e2?.orderref) &&
        e1?.ordernumbr == e2?.ordernumbr &&
        e1?.email == e2?.email;
  }

  @override
  int hash(OrderRecord? e) => const ListEquality().hash([
        e?.date,
        e?.promoCode,
        e?.shippingMethod,
        e?.shippingAddress,
        e?.amount,
        e?.products,
        e?.paymentCompleted,
        e?.discountOrPromo,
        e?.tax,
        e?.finalAmountPaid,
        e?.paymentMethod,
        e?.paidDate,
        e?.shippingTimeline,
        e?.status,
        e?.userRef,
        e?.upcomming,
        e?.prudyctref,
        e?.host,
        e?.name,
        e?.package,
        e?.price,
        e?.quntity,
        e?.username,
        e?.id,
        e?.emailcard,
        e?.emailcode,
        e?.whatsapp,
        e?.password,
        e?.complet,
        e?.priceyer,
        e?.orderref,
        e?.ordernumbr,
        e?.email
      ]);

  @override
  bool isValidKey(Object? o) => o is OrderRecord;
}
