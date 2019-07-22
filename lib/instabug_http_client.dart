library instabug_http_client;

import 'dart:convert';
import 'dart:typed_data';

import 'package:flutter/foundation.dart';
import 'package:http/http.dart' as http;
import 'package:instabug_http_client/instabug_http_logger.dart';
import 'package:meta/meta.dart';



class InstabugHttpClient extends InstabugHttpLogger implements http.Client {

  @visibleForTesting
  http.Client client;

  @visibleForTesting
  InstabugHttpLogger logger;
  
  InstabugHttpClient() : super() {
    client = http.Client();
    logger = this;
  }

  

  @override
  Future<http.Response> delete(url, {Map<String, String> headers}) {
    DateTime startTime = DateTime.now();
    return client.delete(url, headers: headers).then((response) {
      logger.logHttpResponse(response, startTime: startTime);
      return response;
    });
  }

  @override
  Future<http.Response> get(url, {Map<String, String> headers}) {
    
    DateTime startTime = DateTime.now();
    return client.get(url, headers: headers).then((response) {
      logger.logHttpResponse(response, startTime: startTime);
      return response;
    });
  }

  @override
  Future<http.Response> head(url, {Map<String, String> headers}) {
    DateTime startTime = DateTime.now();
    return client.head(url, headers: headers).then((response) {
      logger.logHttpResponse(response, startTime: startTime);
      return response;
    });
  }

  @override
  Future<http.Response> patch(url, {Map<String, String> headers, body, Encoding encoding}) {
    DateTime startTime = DateTime.now();
    return client.patch(url, headers: headers, encoding: encoding).then((response) {
      logger.logHttpResponse(response, startTime: startTime);
      return response;
    });
  }

  @override
  Future<http.Response> post(url, {Map<String, String> headers, body, Encoding encoding}) {
    DateTime startTime = DateTime.now();
    return client.post(url, headers: headers, encoding: encoding).then((response) {
      logger.logHttpResponse(response, startTime: startTime);
      return response;
    });
  }

  @override
  Future<http.Response> put(url, {Map<String, String> headers, body, Encoding encoding}) {
    DateTime startTime = DateTime.now();
    return client.put(url, headers: headers, encoding: encoding).then((response) {
      logger.logHttpResponse(response, startTime: startTime);
      return response;
    });
  }

  @override
  Future<String> read(url, {Map<String, String> headers}) {
    return client.read(url, headers: headers).then((response) {
      return response;
    });
  }

  @override
  Future<Uint8List> readBytes(url, {Map<String, String> headers}) {
    return client.readBytes(url, headers: headers).then((response) {
      return response;
    });
  }

  @override
  Future<http.StreamedResponse> send(http.BaseRequest request) {
    return client.send(request);
  }

  @override
  void close() {
    client.close();
  }

}
