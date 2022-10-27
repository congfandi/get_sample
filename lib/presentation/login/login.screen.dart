import 'package:flutter/material.dart';

import 'package:get/get.dart';

import 'controllers/login.controller.dart';

class LoginScreen extends GetView<LoginController> {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('LoginScreen'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(18.0),
        child: Column(
          children: [
            Text(
              'LoginScreen is working',
              style: TextStyle(fontSize: 20),
            ),
            TextFormField(
              controller: controller.emailController,
              decoration: InputDecoration(
                labelText: 'Email',
              ),
            ),


            Obx(() {
              return TextFormField(
                controller: controller.passwordController,
                obscureText: !controller.isPasswordVisible.value,
                decoration: InputDecoration(
                  labelText: 'Password',
                  suffixIcon: IconButton(
                    icon: Icon(Icons.remove_red_eye),
                    onPressed: controller.handleShowPassword,
                  ),
                ),
              );
            }),


            Row(
              children: [
                Text("Keep me login "),

                SizedBox(
                  width: 24,
                ),

                GetBuilder<LoginController>(
                  assignId: true,
                  id: "#keepmelogin",
                  builder: (logic) {
                    return Checkbox(
                      value: controller.keepmeLogin,
                      onChanged: (myvalue) => controller.handleKeepMeLogin(),
                    );
                  },
                ),


              ],
            ),
            ElevatedButton(
              onPressed: controller.handleLoginButton,
              child: Text('Login'),
            ),
          ],
        ),
      ),
    );
  }
}
