
import 'package:instabug/NetworkLogger.dart';
import 'package:instabug/models/network_data.dart';
import 'package:http/http.dart' as http;
import 'package:meta/meta.dart';

class InstabugHttpLogger {

  @visibleForTesting
  @protected
  void logHttpResponse(http.Response response, { DateTime startTime }) {
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
}