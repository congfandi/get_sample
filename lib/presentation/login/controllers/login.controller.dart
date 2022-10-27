import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class LoginController extends GetxController {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  RxBool isPasswordVisible = false.obs;
  bool keepmeLogin = false;

  void handleKeepMeLogin() {
    keepmeLogin = !keepmeLogin;
    update(["#keepmelogin"]);
  }

  void handleShowPassword() {
    isPasswordVisible.value = !isPasswordVisible.value;
  }

  void handleLoginButton() {
    if(emailController.text.isEmail && passwordController.text.length > 6) {
      Get.snackbar("Login", "Login Success");
      Get.offAllNamed("/home");
    } else {
      Get.snackbar("Login", "Login Failed");
    }
  }

  @override
  void onInit() {
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
}
