import 'package:http/http.dart' as http;
import 'package:instabug_flutter/NetworkLogger.dart';
import 'package:instabug_flutter/models/network_data.dart';

class InstabugHttpLogger {
  void onLogger(http.Response response, {DateTime? startTime}) {
    final Map<String, dynamic> requestHeaders = <String, dynamic>{};
    response.request!.headers.forEach((String header, dynamic value) {
      requestHeaders[header] = value;
    });

    final http.Request? request = response.request as http.Request;

    if (request == null) {
      return;
    }

    final NetworkData requestData = NetworkData(
      startTime: startTime!,
      method: request.method,
      url: request.url.toString(),
      requestHeaders: requestHeaders,
      requestBody: request.body,
    );

    final DateTime endTime = DateTime.now();

    final Map<String, dynamic> responseHeaders = <String, dynamic>{};
    response.headers.forEach((String header, dynamic value) {
      responseHeaders[header] = value;
    });

    NetworkLogger.networkLog(requestData.copyWith(
      status: response.statusCode,
      duration: endTime.difference(requestData.startTime).inMicroseconds,
      contentType: response.headers.containsKey('content-type')
          ? response.headers['content-type']
          : '',
      responseHeaders: responseHeaders,
      responseBody: response.body,
    ));
  }
}
