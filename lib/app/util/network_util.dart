import 'dart:convert';

import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:http/http.dart' as http;

import 'connectivity_util.dart';
import 'func_util.dart';

Map? headers;

class NetworkUtil {
  final String hostUrl = 'https://reqres.in/api/';

  static NetworkUtil _instance = new NetworkUtil.internal();
  NetworkUtil.internal();
  factory NetworkUtil() => _instance;
  final JsonDecoder _decoder = new JsonDecoder();
  // ConnectivityUtil _connectivityUtil = ConnectivityUtil();

  Future<dynamic> getFunc(String url,
      {Map<String, String>? headers, param, accessToken}) async {
    var currentConnection;
    headers = <String, String>{
      'Content-Type': 'application/json',
    };
    if (accessToken != null) {
      headers.addAll(
        {'Authorization': 'Bearer ' + "$accessToken"},
      );
    }
    // currentConnection = await _connectivityUtil.CheckConnectivity();
    // if (currentConnection == ConnectivityResult.none) {
    //   // showSnackbar(pesan: "Koneksi Terputus");
    //   DialogConnection(messages: "Koneksi Terputus");
    //   throw ("ASDASDSAD");
    // }
    logKey(url);
    logKey(headers);
    // logKey(url);
    return http
        .get(Uri.parse(url), headers: headers)
        .then((http.Response response) {
      final String res = response.body;
      logKey("Response", res);
      final int statusCode = response.statusCode;
      if (statusCode < 200) {
        throw new Exception("Error while fetching data");
      }
      return _decoder.convert(res);
    });
  }

  Future<dynamic> postFunc(String url,
      {Map<String, String>? headers, body, accessToken}) {
    if (accessToken == null) {
      headers = <String, String>{
        'Content-Type': 'application/json',
      };
    }
    if (headers == null) {
      headers = <String, String>{
        'Content-Type': 'application/json',
        'Authorization': 'Bearer ' + accessToken,
      };
    } else if (headers['Content-Type'] == null) {
      headers['Content-Type'] = 'application/json';
      headers['Authorization'] = 'Bearer ' + accessToken;
    }
    return http
        .post(Uri.parse(url), headers: headers, body: body)
        .then((http.Response response) {
      final String res = response.body;
      logKey("Response", res);
      final int statusCode = response.statusCode;
      if (statusCode < 200) {
        throw new Exception("Error while fetching data");
      }
      try {
        return _decoder.convert(res) as Map;
      } on FormatException {
        return {"status": false, "data": res};
      }
    });
  }
}
