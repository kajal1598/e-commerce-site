import '/core/app_export.dart';
import 'package:social_media_app/presentation/log_in_screen/models/log_in_model.dart';
import 'package:flutter/material.dart';

class LogInController extends GetxController {
  TextEditingController frameThirtyController1 = TextEditingController();

  TextEditingController frameThirtyOneController = TextEditingController();

  Rx<LogInModel> logInModelObj = LogInModel().obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
    frameThirtyController1.dispose();
    frameThirtyOneController.dispose();
  }
}
