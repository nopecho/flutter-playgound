import 'dart:developer';

import 'package:get/get.dart';

class SignUpViewModel extends GetxController {

  void onEvent() {
    log("on sign up event");
  }

  void onSuccessSignup() {
    Get.offAllNamed("/onboarding");
  }
}