import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:dio/dio.dart';

Dio dio = Dio(
  BaseOptions(
    baseUrl: 'http://api.surfnetwork.online:8880/',
    sendTimeout: Duration(seconds: 10),
    connectTimeout: Duration(seconds: 10),
    receiveTimeout: Duration(seconds: 15),
  ),
);

AndroidOptions _getAndroidOptions() =>
    const AndroidOptions(encryptedSharedPreferences: true);
final storage = FlutterSecureStorage(aOptions: _getAndroidOptions());
