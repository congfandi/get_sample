import 'package:flutter/material.dart';

import 'package:get/get.dart';

import 'controllers/otp.controller.dart';

class OtpScreen extends GetView<OtpController> {
  const OtpScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('OtpScreen'),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          'OtpScreen is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
