library instabug_http_logger;

import 'dart:convert';

import 'dart:typed_data';

import 'package:instabug/NetworkLogger.dart';
import 'package:http/http.dart' as http;
import 'package:instabug/models/network_data.dart';



class IBGHttpClient implements http.Client {

  http.Client _client;
  http.Client get client => _client;
  
  IBGHttpClient() : super() {
    _client = http.Client();
  }

  void _logHttpResponse(http.Response response, { DateTime startTime }) {
    if (response == null) {
      return;
    }

    http.Request request = response.request;
    if (request == null) {
      return;
    }

    NetworkData networkData = NetworkData();

    // fill request data
    networkData.url = request.url.toString();
    networkData.method = request.method;
    if (request.body != null) {
      networkData.requestBody = request.body;
    }

    request.headers.forEach((header, value){
      networkData.requestHeaders[header] = value;
    });

    // fill response data
    networkData.status = response.statusCode;
    response.headers.forEach((header, value){
      networkData.responseHeaders[header] = value;
    });
    
    if (response.body != null) {
      networkData.responseBody = response.body;
    }
    if (response.headers.containsKey('content-type')) {
      networkData.contentType = response.headers['content-type'];
    }

    networkData.duration = DateTime.now().difference(startTime).inMilliseconds;

    // send network data to native platform
    NetworkLogger.networkLog(networkData);
  }

  @override
  Future<http.Response> delete(url, {Map<String, String> headers}) {
    DateTime startTime = DateTime.now();
    return client.delete(url, headers: headers).then((response) {
      _logHttpResponse(response, startTime: startTime);
      return response;
    });
  }

  @override
  Future<http.Response> get(url, {Map<String, String> headers}) {
    
    DateTime startTime = DateTime.now();
    return _client.get(url, headers: headers).then((response) {
      _logHttpResponse(response, startTime: startTime);
      return response;
    });
  }

  @override
  Future<http.Response> head(url, {Map<String, String> headers}) {
    DateTime startTime = DateTime.now();
    return _client.head(url, headers: headers).then((response) {
      _logHttpResponse(response, startTime: startTime);
      return response;
    });
  }

  @override
  Future<http.Response> patch(url, {Map<String, String> headers, body, Encoding encoding}) {
    DateTime startTime = DateTime.now();
    return _client.patch(url, headers: headers, encoding: encoding).then((response) {
      _logHttpResponse(response, startTime: startTime);
      return response;
    });
  }

  @override
  Future<http.Response> post(url, {Map<String, String> headers, body, Encoding encoding}) {
    DateTime startTime = DateTime.now();
    return _client.post(url, headers: headers, encoding: encoding).then((response) {
      _logHttpResponse(response, startTime: startTime);
      return response;
    });
  }

  @override
  Future<http.Response> put(url, {Map<String, String> headers, body, Encoding encoding}) {
    DateTime startTime = DateTime.now();
    return _client.put(url, headers: headers, encoding: encoding).then((response) {
      _logHttpResponse(response, startTime: startTime);
      return response;
    });
  }

  @override
  Future<String> read(url, {Map<String, String> headers}) {
    return _client.read(url, headers: headers).then((response) {
      return response;
    });
  }

  @override
  Future<Uint8List> readBytes(url, {Map<String, String> headers}) {
    return _client.readBytes(url, headers: headers).then((response) {
      return response;
    });
  }

  @override
  Future<http.StreamedResponse> send(http.BaseRequest request) {
    return _client.send(request);
  }

  @override
  void close() {
    _client.close();
  }

}
