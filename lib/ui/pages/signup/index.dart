import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SingUpPage extends GetView<SingUpViewModel> {
  const SingUpPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("sign up page"),
      ),
      body: Center(
        child: OutlinedButton(
          onPressed: () => Get.offAllNamed("/"),
          child: const Text("go home"),
        ),
      ),
    );
  }
  
}


class SingUpViewModel {
}