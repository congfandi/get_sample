import 'package:sample_dengan_get/domain/provider/providers/api_url.dart';
import 'package:sample_dengan_get/domain/provider/providers/base_provider.dart';

class HomeProvider extends BaseProvider {
  HomeProvider() {
    super.onInit();
  }

  Future<Map<String, dynamic>> getSampleJson() async {
    final response = await get(ApiUrl.products);
    return response.body;
  }
}
