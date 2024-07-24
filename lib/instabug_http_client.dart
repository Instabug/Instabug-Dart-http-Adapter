library instabug_http_client;

import 'dart:convert';
import 'dart:io';

// to maintain supported versions prior to Flutter 3.3
// ignore: unnecessary_import
import 'dart:typed_data';

import 'package:http/http.dart' as http;
import 'package:http/io_client.dart';
import 'package:instabug_flutter/instabug_flutter.dart';
import 'package:instabug_http_client/instabug_http_logger.dart';
import 'package:meta/meta.dart';

class InstabugHttpClient extends InstabugHttpLogger implements http.Client {
  InstabugHttpClient() : client = http.Client() {
    logger = this;
  }

  final NetworkLogger _networklogger = NetworkLogger();
  @visibleForTesting
  http.Client client;

  @visibleForTesting
  late InstabugHttpLogger logger;

  @override
  void close() => client.close();

  @override
  Future<http.Response> delete(Uri url,
      {Map<String, String>? headers, Object? body, Encoding? encoding}) async {
    final DateTime startTime = DateTime.now();
    final Map<String, String> requestHeader = headers ?? <String, String>{};
    final String? w3Header = await _networklogger.getW3Header(
        requestHeader, startTime.millisecondsSinceEpoch);
    if (w3Header != null) {
      requestHeader['traceparent'] = w3Header;
    }
    return client
        .delete(url, body: body, headers: requestHeader, encoding: encoding)
        .then((http.Response response) {
      logger.onLogger(response, startTime: startTime);
      return response;
    });
  }

  @override
  Future<http.Response> get(Uri url, {Map<String, String>? headers}) async {
    final DateTime startTime = DateTime.now();
    final Map<String, String> requestHeader = headers ?? <String, String>{};
    final String? w3Header = await _networklogger.getW3Header(
        requestHeader, startTime.millisecondsSinceEpoch);
    if (w3Header != null) {
      requestHeader['traceparent'] = w3Header;
    }
    return client
        .get(url, headers: requestHeader)
        .then((http.Response response) {
      logger.onLogger(response, startTime: startTime);
      return response;
    });
  }

  @override
  Future<http.Response> head(Uri url, {Map<String, String>? headers}) async {
    final DateTime startTime = DateTime.now();
    final Map<String, String> requestHeader = headers ?? <String, String>{};
    final String? w3Header = await _networklogger.getW3Header(
        requestHeader, startTime.millisecondsSinceEpoch);
    if (w3Header != null) {
      requestHeader['traceparent'] = w3Header;
    }
    return client
        .head(url, headers: requestHeader)
        .then((http.Response response) {
      logger.onLogger(response, startTime: startTime);
      return response;
    });
  }

  @override
  Future<http.Response> patch(Uri url,
      {Map<String, String>? headers, Object? body, Encoding? encoding}) async {
    final DateTime startTime = DateTime.now();
    final Map<String, String> requestHeader = headers ?? <String, String>{};
    final String? w3Header = await _networklogger.getW3Header(
        requestHeader, startTime.millisecondsSinceEpoch);
    if (w3Header != null) {
      requestHeader['traceparent'] = w3Header;
    }
    return client
        .patch(url, headers: requestHeader, body: body, encoding: encoding)
        .then((http.Response response) {
      logger.onLogger(response, startTime: startTime);
      return response;
    });
  }

  @override
  Future<http.Response> post(Uri url,
      {Map<String, String>? headers, Object? body, Encoding? encoding}) async {
    final DateTime startTime = DateTime.now();
    final Map<String, String> requestHeader = headers ?? <String, String>{};
    final String? w3Header = await _networklogger.getW3Header(
        requestHeader, startTime.millisecondsSinceEpoch);
    if (w3Header != null) {
      requestHeader['traceparent'] = w3Header;
    }
    return client
        .post(url, headers: requestHeader, body: body, encoding: encoding)
        .then((http.Response response) {
      logger.onLogger(response, startTime: startTime);
      return response;
    });
  }

  @override
  Future<http.Response> put(Uri url,
      {Map<String, String>? headers, Object? body, Encoding? encoding}) async {
    final DateTime startTime = DateTime.now();
    final Map<String, String> requestHeader = headers ?? <String, String>{};
    final String? w3Header = await _networklogger.getW3Header(
        requestHeader, startTime.millisecondsSinceEpoch);
    if (w3Header != null) {
      requestHeader['traceparent'] = w3Header;
    }
    return client
        .put(url, headers: requestHeader, body: body, encoding: encoding)
        .then((http.Response response) {
      logger.onLogger(response, startTime: startTime);
      return response;
    });
  }

  @override
  Future<String> read(Uri url, {Map<String, String>? headers}) =>
      client.read(url, headers: headers);

  @override
  Future<Uint8List> readBytes(Uri url, {Map<String, String>? headers}) =>
      client.readBytes(url, headers: headers);

  @override
  Future<http.StreamedResponse> send(http.BaseRequest request) async {
    final DateTime startTime = DateTime.now();
    final Map<String, String> requestHeader = request.headers;
    final String? w3Header = await _networklogger.getW3Header(
        requestHeader, startTime.millisecondsSinceEpoch);
    if (w3Header != null) {
      requestHeader['traceparent'] = w3Header;
    }
    return client.send(request).then((http.StreamedResponse streamedResponse) =>
        http.Response.fromStream(streamedResponse)
            .then((http.Response response) {
          logger.onLogger(response, startTime: startTime);
          // Need to return new StreamedResponse, as body only can be listened once
          return http.StreamedResponse(
            Stream<List<int>>.value(response.bodyBytes),
            response.statusCode,
            contentLength: response.contentLength,
            request: response.request,
            headers: response.headers,
            isRedirect: response.isRedirect,
            persistentConnection: response.persistentConnection,
            reasonPhrase: response.reasonPhrase,
          );
        }));
  }
}
