import '/core/app_export.dart';
import 'package:social_media_app/presentation/live_screen/models/live_model.dart';
import 'package:flutter/material.dart';

class LiveController extends GetxController {
  TextEditingController frameThirtySixController3 = TextEditingController();

  Rx<LiveModel> liveModelObj = LiveModel().obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
    frameThirtySixController3.dispose();
  }
}
