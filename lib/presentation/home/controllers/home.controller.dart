import 'package:get/get.dart';
import 'package:sample_dengan_get/domain/provider/providers/home_provider.dart';

class HomeController extends GetxController {

  final HomeProvider _homeProvider = HomeProvider();

  final count = 0.obs;
  @override
  void onInit() {
    _homeProvider.getSampleJson();
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }

  void increment() => count.value++;
}
