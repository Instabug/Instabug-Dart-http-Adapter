import 'dart:convert';
import 'dart:typed_data';

import 'package:flutter_test/flutter_test.dart';
import 'package:http/http.dart' as http;
import 'package:mockito/mockito.dart';

import 'package:instabug_http_client/instabug_http_client.dart';
import 'package:instabug_http_client/instabug_http_logger.dart';

class MockHttpClient extends Mock implements http.Client {}

class MockInstabugHttpLogger extends Mock implements InstabugHttpLogger {}

void main() {
  const fakeResponse = {
    "id": "123",
    "activationCode": "111111",
  };
  const url = 'http://www.instabug.com';
  http.Response mockedResponse = http.Response(json.encode(fakeResponse), 200);
  InstabugHttpClient instabugHttpClient;

  setUp(() {
    instabugHttpClient = InstabugHttpClient();
    instabugHttpClient.client = MockHttpClient();
    instabugHttpClient.logger = MockInstabugHttpLogger();
  });

  test('expect instabug http client GET to return response', () async {

    when<dynamic>(instabugHttpClient.client.get(any))
        .thenAnswer((_) async => mockedResponse);
    var result = await instabugHttpClient.get(url);
    expect(result, isInstanceOf<http.Response>());
    expect(result, mockedResponse);
    verify(instabugHttpClient.logger
            .logHttpResponse(mockedResponse, startTime: anyNamed('startTime')))
        .called(1);
  });

  test('expect instabug http client HEAD to return response', () async {

    when<dynamic>(instabugHttpClient.client.head(any))
        .thenAnswer((_) async => mockedResponse);
    var result = await instabugHttpClient.head(url);
    expect(result, isInstanceOf<http.Response>());
    expect(result, mockedResponse);
    verify(instabugHttpClient.logger
            .logHttpResponse(mockedResponse, startTime: anyNamed('startTime')))
        .called(1);
  });

  test('expect instabug http client DELETE to return response', () async {

    when<dynamic>(instabugHttpClient.client.delete(any))
        .thenAnswer((_) async => mockedResponse);
    var result = await instabugHttpClient.delete(url);
    expect(result, isInstanceOf<http.Response>());
    expect(result, mockedResponse);
    verify(instabugHttpClient.logger
            .logHttpResponse(mockedResponse, startTime: anyNamed('startTime')))
        .called(1);
  });

  test('expect instabug http client PATCH to return response', () async {

    when<dynamic>(instabugHttpClient.client.patch(any))
        .thenAnswer((_) async => mockedResponse);
    var result = await instabugHttpClient.patch(url);
    expect(result, isInstanceOf<http.Response>());
    expect(result, mockedResponse);
    verify(instabugHttpClient.logger
            .logHttpResponse(mockedResponse, startTime: anyNamed('startTime')))
        .called(1);
  });

  test('expect instabug http client POST to return response', () async {
    
    when<dynamic>(instabugHttpClient.client.post(any))
        .thenAnswer((_) async => mockedResponse);
    var result = await instabugHttpClient.post(url);
    expect(result, isInstanceOf<http.Response>());
    expect(result, mockedResponse);
    verify(instabugHttpClient.logger
            .logHttpResponse(mockedResponse, startTime: anyNamed('startTime')))
        .called(1);
  });

  test('expect instabug http client PUT to return response', () async {
    
    when<dynamic>(instabugHttpClient.client.put(any))
        .thenAnswer((_) async => mockedResponse);
    var result = await instabugHttpClient.put(url);
    expect(result, isInstanceOf<http.Response>());
    expect(result, mockedResponse);
    verify(instabugHttpClient.logger
            .logHttpResponse(mockedResponse, startTime: anyNamed('startTime')))
        .called(1);
  });

   test('expect instabug http client READ to return response', () async {
    
    String response = 'Some response string';
    when<dynamic>(instabugHttpClient.client.read(any))
        .thenAnswer((_) async => response);
    var result = await instabugHttpClient.read(url);
    expect(result, isInstanceOf<String>());
    expect(result, response);
    verifyNever(instabugHttpClient.logger
            .logHttpResponse(any, startTime: anyNamed('startTime')));
  });

  test('expect instabug http client READBYTES to return response', () async {
    
    Uint8List response = Uint8List(3);
    when<dynamic>(instabugHttpClient.client.readBytes(any))
        .thenAnswer((_) async => response);
    var result = await instabugHttpClient.readBytes(url);
    expect(result, isInstanceOf<Uint8List>());
    expect(result, response);
    verifyNever(instabugHttpClient.logger
            .logHttpResponse(any, startTime: anyNamed('startTime')));
  });

  test('expect instabug http client SEND to return response', () async {
    
    http.StreamedResponse response = http.StreamedResponse(Stream.empty(), 200);
    when<dynamic>(instabugHttpClient.client.send(any))
        .thenAnswer((_) async => response);
    var result = await instabugHttpClient.send(http.Request('GET', Uri.parse(url)));
    expect(result, isInstanceOf<http.StreamedResponse>());
    expect(result, response);
    verifyNever(instabugHttpClient.logger
            .logHttpResponse(any, startTime: anyNamed('startTime')));
  });

  test('expect instabug http client CLOSE to be called', () async {
    
    instabugHttpClient.close();

    verify(instabugHttpClient.client.close()).called(1);
  });

  test('stress test for GET method', () async {

    when<dynamic>(instabugHttpClient.client.get(any))
        .thenAnswer((_) async => any);
    
    for(int i = 0; i < 10000; i++) {
      await instabugHttpClient.get(url);
    }

    verify(instabugHttpClient.logger
            .logHttpResponse(any, startTime: anyNamed('startTime')))
        .called(10000);
  });
}
