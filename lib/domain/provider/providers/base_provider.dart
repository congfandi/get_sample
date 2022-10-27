import 'package:get/get.dart';
import 'package:sample_dengan_get/config.dart';

class BaseProvider extends GetConnect {
  @override
  void onInit() {
    httpClient.baseUrl = ConfigEnvironments.getEnvironments()['url'];
    httpClient.addRequestModifier<dynamic>((request) {
      request.headers['Content-Type'] = 'application/json';
      print("Request: ${request.url}");
      print("Request: ${request.headers}");
      return request;
    });
    httpClient.addResponseModifier((request, response) {
      print('Request: ${request.url}');
      print('Response: ${response.body}');
      return response;
    });
    super.onInit();
  }
}
