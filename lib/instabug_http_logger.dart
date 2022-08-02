import 'package:http/http.dart' as http;
import 'package:instabug_flutter/instabug_flutter.dart';

class InstabugHttpLogger {
  void onLogger(http.Response response, {DateTime? startTime}) {
    final NetworkLogger networkLogger = NetworkLogger();

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
    int requestBodySize = 0;
    if (requestHeaders.containsKey('content-length')) {
      requestBodySize = int.parse(responseHeaders['content-length'] ?? '0');
    } else {
      requestBodySize = request.body.length;
    }

    int responseBodySize = 0;
    if (responseHeaders.containsKey('content-length')) {
      responseBodySize = int.parse(responseHeaders['content-length'] ?? '0');
    } else {
      responseBodySize = response.body.length;
    }

    networkLogger.networkLog(requestData.copyWith(
      status: response.statusCode,
      duration: endTime.difference(requestData.startTime).inMicroseconds,
      responseContentType: response.headers.containsKey('content-type')
          ? response.headers['content-type']
          : '',
      responseHeaders: responseHeaders,
      responseBody: response.body,
      requestBodySize: requestBodySize,
      responseBodySize: responseBodySize,
      requestContentType: request.headers.containsKey('content-type')
          ? request.headers['content-type']
          : '',
    ));
  }
}
