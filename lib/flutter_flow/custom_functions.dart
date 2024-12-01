import 'dart:convert';
import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:timeago/timeago.dart' as timeago;
import 'lat_lng.dart';
import 'place.dart';
import 'uploaded_file.dart';
import '/backend/backend.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import '/backend/schema/structs/index.dart';
import '/backend/schema/enums/enums.dart';
import '/auth/firebase_auth/auth_util.dart';

bool textContaintext(
  String searchIN,
  String searchFOR,
) {
  return searchIN.toLowerCase().contains(searchFOR.toLowerCase());
}

double stringToDouble(String amount) {
  return double.parse(amount);
}

double sumCartPrices(List<CartProductStruct> products) {
  double sum = 0;
  for (var i in products) {
    sum += ((i.price) * i.count);
  }
  return sum;
}

double? newCustomFunction(String? numero) {
  if (numero == null) {
    return null;
  } else {
    return double.tryParse(numero);
  }
}

List<DocumentReference> newCustomFunction2(
  DocumentReference receptor,
  DocumentReference usuario,
) {
  return [receptor, usuario];
}

DocumentReference newCustomFunction3(List<DocumentReference> usuarios) {
  DocumentReference usuarioAutenticado = currentUserReference!;

  // obtener el usuario contrario al autenticado
  DocumentReference usuarioContrario =
      usuarios.firstWhere((usuario) => usuario != usuarioAutenticado);

  return usuarioContrario;
}

List<DocumentReference> newCustomFunction4(
  DocumentReference receptor,
  DocumentReference usuario,
) {
  return [receptor, usuario];
}

double? newCustomFunction5(String? buy) {
  if (buy == null) {
    return null;
  } else {
    return double.tryParse(buy);
  }
}

DocumentReference usuarioContrario(List<DocumentReference> usuarios) {
  // pasando 2 usuarios retorname el usuario contrario al autenticado
// obtener el usuario autenticado
  DocumentReference usuarioAutenticado = currentUserReference!;

  // obtener el usuario contrario al autenticado
  DocumentReference usuarioContrario =
      usuarios.firstWhere((usuario) => usuario != usuarioAutenticado);

  return usuarioContrario;
}

double? saldoyemen(String? numero) {
  if (numero == null) {
    return null;
  } else {
    return double.tryParse(numero);
  }
}
