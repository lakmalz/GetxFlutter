import 'dart:io';

import 'package:dio/dio.dart';
import 'package:getxflutter/data/remote/network_config.dart';

class NetworkManager{

  factory NetworkManager({
    required String baseUrl,
  }){
    return  NetworkManager._internal(baseUrl);
  }

  NetworkManager._internal(String baseUrl) {
    this._baseUrl = baseUrl;
  }

  late String _baseUrl;

  Dio get dio => _getDioWithHeaders();

Dio _getDioWithHeaders() {
    return Dio()
      ..interceptors.addAll([
        _intercepterWrapper(),
      ])
      ..options.baseUrl = _baseUrl
      ..options.connectTimeout = DEFAULT_CONNECT_TIMEOUT
      ..options.receiveTimeout = DEFAULT_CONNECT_TIMEOUT;
  }

  _intercepterWrapper() {
    return QueuedInterceptorsWrapper(
      onRequest: (options, handler) async {
        // options.headers[HttpHeaders.authorizationHeader] =
        //     'Bearer ${getToken() ?? ''}';
        options.headers[HttpHeaders.contentTypeHeader] = 'application/json';
        
        handler.next(options);
      },
      onResponse: (res, handler) {
        handler.next(res);
      },
      onError: (error, handler) {
        return handler.next(error);
      },
    );
  }
}