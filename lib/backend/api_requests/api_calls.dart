import 'dart:convert';
import 'dart:typed_data';
import '../schema/structs/index.dart';

import 'package:flutter/foundation.dart';

import '/flutter_flow/flutter_flow_util.dart';
import 'api_manager.dart';

export 'api_manager.dart' show ApiCallResponse;

const _kPrivateApiFunctionName = 'ffPrivateApiCall';

class PaymentMessageCall {
  static Future<ApiCallResponse> call({
    int? ac,
    String? sc = '',
    String? amt = '',
    String? sno = '',
    int? mt,
    int? ref,
    String? sac = '',
    String? rem = '',
    double? cost,
  }) async {
    final ffApiRequestBody = '''
{
  "AC": ${ac},
  "SC": ${sc},
  "AMT": ${amt},
  "SNO": "${sno}",
  "MT": ${mt},
  "REF": ${ref},
  "SAC": "${sac}",
  "REM": "${rem}",
"USR" : "beforgi",
"TKN" : "45701386",
  "COST": ${cost}
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Payment Message',
      apiUrl: 'https://awmanpay.com:8084/api/tp/v1',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class QuerySubscriberBalanceMessageCall {
  static Future<ApiCallResponse> call({
    String? sno = '',
    int? sc,
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'Query Subscriber Balance Message',
      apiUrl: 'https://awmanpay.com:8084/api/tp/v1',
      callType: ApiCallType.GET,
      headers: {},
      params: {
        'ac': 4001,
        'sc': sc,
        'sno': sno,
        'USR': "beforgi",
        'tkn': "45701386",
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: true,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class OffersManagementMessageYMOBILECall {
  static Future<ApiCallResponse> call({
    int? ac,
    int? sc,
    String? sno = '',
    String? sac = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'Offers Management MessageYMOBILE',
      apiUrl: 'https://awmanpay.com:8084/api/tp/v1',
      callType: ApiCallType.GET,
      headers: {},
      params: {
        'AC': ac,
        'SC': sc,
        'SNO': sno,
        'SAC': sac,
        'USR': "beforgi",
        'TKN': "45701386",
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static String? loan(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.SD''',
      ));
}

class CheckTransactionStatusCall {
  static Future<ApiCallResponse> call({
    String? ac = '7400',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'Check Transaction Status',
      apiUrl: 'https://awmanpay.com:8084/api/tp/v1',
      callType: ApiCallType.GET,
      headers: {},
      params: {
        'AC': ac,
        'USR': "beforgi",
        'TKN': "45701386",
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class DaCall {
  static Future<ApiCallResponse> call() async {
    return ApiManager.instance.makeApiCall(
      callName: 'da',
      apiUrl: 'https://awmanpay.com:8084/api/tp/v1',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class QueryAgentEWalletBalanceMessageCall {
  static Future<ApiCallResponse> call() async {
    return ApiManager.instance.makeApiCall(
      callName: 'Query Agent EWallet Balance Message',
      apiUrl: 'https://awmanpay.com:8084/api/tp/v1',
      callType: ApiCallType.GET,
      headers: {},
      params: {
        'AC': 7400,
        'USR': "beforgi",
        'TKN': "45701386",
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class DeaeCall {
  static Future<ApiCallResponse> call() async {
    return ApiManager.instance.makeApiCall(
      callName: 'deae',
      apiUrl: 'https://awmanpay.com:8084/api/tp/v1',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class ApiPagingParams {
  int nextPageNumber = 0;
  int numItems = 0;
  dynamic lastResponse;

  ApiPagingParams({
    required this.nextPageNumber,
    required this.numItems,
    required this.lastResponse,
  });

  @override
  String toString() =>
      'PagingParams(nextPageNumber: $nextPageNumber, numItems: $numItems, lastResponse: $lastResponse,)';
}

String _toEncodable(dynamic item) {
  if (item is DocumentReference) {
    return item.path;
  }
  return item;
}

String _serializeList(List? list) {
  list ??= <String>[];
  try {
    return json.encode(list, toEncodable: _toEncodable);
  } catch (_) {
    if (kDebugMode) {
      print("List serialization failed. Returning empty list.");
    }
    return '[]';
  }
}

String _serializeJson(dynamic jsonVar, [bool isList = false]) {
  jsonVar ??= (isList ? [] : {});
  try {
    return json.encode(jsonVar, toEncodable: _toEncodable);
  } catch (_) {
    if (kDebugMode) {
      print("Json serialization failed. Returning empty json.");
    }
    return isList ? '[]' : '{}';
  }
}
