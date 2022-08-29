import 'controller/notification_controller.dart';
import 'package:flutter/material.dart';
import 'package:social_media_app/core/app_export.dart';
import 'package:social_media_app/widgets/custom_icon_button.dart';
import 'package:social_media_app/widgets/custom_switch.dart';

class NotificationScreen extends GetWidget<NotificationController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.deepPurpleA200,
            body: Container(
                width: size.width,
                child: SingleChildScrollView(
                    child: Container(
                        child: Column(
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                      CustomIconButton(
                          height: 44,
                          width: 44,
                          margin: getMargin(left: 16, top: 3, right: 16),
                          shape: IconButtonShape.RoundedBorder15,
                          padding: IconButtonPadding.PaddingAll14,
                          onTap: () {
                            onTapBtntf();
                          },
                          child: CommonImageView(
                              svgPath: ImageConstant.imgArrowleftWhiteA700)),
                      Align(
                          alignment: Alignment.center,
                          child: Container(
                              height: getVerticalSize(355.00),
                              width: getHorizontalSize(382.00),
                              margin: getMargin(
                                  left: 16, top: 108, right: 16, bottom: 342),
                              child: Stack(
                                  alignment: Alignment.centerLeft,
                                  children: [
                                    Align(
                                        alignment: Alignment.bottomLeft,
                                        child: Container(
                                            width: getHorizontalSize(382.00),
                                            margin:
                                                getMargin(top: 69, bottom: 69),
                                            child: Text(
                                                "msg_turn_on_notific".tr,
                                                maxLines: null,
                                                textAlign: TextAlign.left,
                                                style: AppStyle
                                                    .txtInterRegular16WhiteA700
                                                    .copyWith()))),
                                    Align(
                                        alignment: Alignment.centerLeft,
                                        child: Container(
                                            child: Column(
                                                mainAxisSize: MainAxisSize.min,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                children: [
                                              Align(
                                                  alignment: Alignment.center,
                                                  child: Padding(
                                                      padding: getPadding(
                                                          left: 118,
                                                          right: 118),
                                                      child: CommonImageView(
                                                          imagePath: ImageConstant
                                                              .imgNotificationbe,
                                                          height:
                                                              getVerticalSize(
                                                                  161.00),
                                                          width:
                                                              getHorizontalSize(
                                                                  146.00)))),
                                              Padding(
                                                  padding: getPadding(
                                                      top: 41, right: 10),
                                                  child: Text(
                                                      "msg_turn_on_notific2".tr,
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      textAlign: TextAlign.left,
                                                      style: AppStyle
                                                          .txtInterBold32WhiteA700
                                                          .copyWith(
                                                              height: 1.00))),
                                              Container(
                                                  width:
                                                      getHorizontalSize(382.00),
                                                  margin: getMargin(top: 13),
                                                  child: Text(
                                                      "msg_turn_on_notific".tr,
                                                      maxLines: null,
                                                      textAlign: TextAlign.left,
                                                      style: AppStyle
                                                          .txtInterRegular16WhiteA700
                                                          .copyWith())),
                                              Padding(
                                                  padding: getPadding(
                                                      top: 49, bottom: 1),
                                                  child: Row(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .spaceBetween,
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .center,
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      children: [
                                                        Padding(
                                                            padding: getPadding(
                                                                bottom: 3),
                                                            child: Text(
                                                                "lbl_notifications"
                                                                    .tr,
                                                                overflow:
                                                                    TextOverflow
                                                                        .ellipsis,
                                                                textAlign:
                                                                    TextAlign
                                                                        .left,
                                                                style: AppStyle
                                                                    .txtInterMedium16WhiteA700
                                                                    .copyWith())),
                                                        Obx(() => CustomSwitch(
                                                            padding: getPadding(
                                                                top: 1),
                                                            value: controller
                                                                .isSelectedSwitch
                                                                .value,
                                                            onChanged: (value) {
                                                              controller
                                                                  .isSelectedSwitch
                                                                  .value = value;
                                                            }))
                                                      ]))
                                            ])))
                                  ])))
                    ]))))));
  }

  onTapBtntf() {
    Get.back();
  }
}
